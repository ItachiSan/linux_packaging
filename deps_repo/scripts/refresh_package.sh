#!/bin/bash

OLDPWD=`pwd`

MY_DIR=`readlink -f $0 | xargs dirname`
REPO_DIR=`dirname $MY_DIR`
BUILD_DIR="${REPO_DIR}/build"
REPO_NAME="aur_dependencies"
DB_FILE="${REPO_NAME}.db.tar.zst"

cd $REPO_DIR

for option in "$@"
do
    if [ "$option" = "-h" -o "$option" = "--help" ]
    then
        echo "Usage: $0 [PACKAGE_NAME]"
        echo
        echo "This command will build and add all the new packages to the database."
        exit 0
    fi
done

function package_name() {
    # Small helper function to get the package name.
    readlink -f $1 | xargs basename | \
        sed -E "s,^([a-z0-9.-]+)-[a-z0-9.+]+-[0-9]+-($(uname -m)|any).pkg.tar.[a-z]+$,\1,"
}

function all_packages() {
    package_query=""
    for p in $(pacman -Slq $REPO_NAME)
    do
        package_query="${package_query}arg[]=$p&"
    done
    # Now build the query, retrieve the info and fetch what we need
    curl -s "https://aur.archlinux.org/rpc/v5/info?${package_query}" \
        | jq ".results[].PackageBase" \
        | sort \
        | uniq \
        | tr -d '"'
}

# Get the packages
packages="$@"
if [ -z "$packages" ]
then
    # for package_file in *.pkg.tar.*;
    # do
    #     packages="$packages $(package_name $package_file)"
    # done
    packages="$(all_packages)"
fi
echo "# Working on packages:"
echo "$packages"
echo

# Make the build directory
rm -rf $BUILD_DIR
mkdir -p $BUILD_DIR

failed_packages=""

for package in $packages
do
    echo "# Working on: $package"

    now=$(date +%s)
    package_file="$(find . -maxdepth 1 -type f -name "$package*" | head -n 1)"
    if [ -f "$package_file" ]
    then
        creation_time="$(stat -c %W $package_file)"
    else
        creation_time=0
    fi
    time_delta="$(( $now - $creation_time ))"

    if [ "$time_delta" -lt 3600 ]
    then
        echo "Package $package_file is less than 1 hour old, skip rebuild ..."
        echo
        continue
    fi

    cd $BUILD_DIR

    echo "# Cloning the Git repository ..."
    git clone "https://aur.archlinux.org/${package}.git"
    cd $package

    echo "# Building the package ..."
    sudo pacman -Sy
    if [ $package = "java17-openjfx" ]
    then
        makepkg -src
    else
        yes | makepkg -src
    fi
    makepkg_exit_code=$?
    if [ $makepkg_exit_code -ne 0 ]
    then
        echo "# Error building the package. Cleanup and skip to next ..."
        echo
        failed_packages="$failed_packages $package"
        cd $BUILD_DIR
        continue
    fi

    echo "# Moving the built packages to the appropriate spot and add them to the database ..."
    for package_file in *.pkg.tar.*
    do
        current_package_file="$(package_name $package_file)"
        rm -v $REPO_DIR/$current_package_file-*.pkg.tar.*
        mv -v $package_file $REPO_DIR
        cd $REPO_DIR
        repo-remove $DB_FILE $current_package_file
        repo-add    $DB_FILE $package_file
        cd $BUILD_DIR/$package
    done

    echo "# Done with package: $package"
    echo
    sleep 1
done

if [ -n "$failed_packages" ]
then
    echo "Error building the following packages: $failed_packages"
fi

cd $OLDPWD
