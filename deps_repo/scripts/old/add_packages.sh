#!/bin/bash

OLDPWD=`pwd`

MY_DIR=`readlink -f $0 | xargs dirname`
REPO_DIR=`dirname $MY_DIR`
BUILD_DIR="${REPO_DIR}/build"
DB_FILE="aur_dependencies.db.tar.zst"

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

# Make the build directory
mkdir -p $BUILD_DIR

failed_packages=""

for package in "$@"
do
    echo "# Working on: $package"
    echo 
    
    cd $BUILD_REPO

    echo "# Cloning the Git repository ..."
    git clone "https://aur.archlinux.org/${package}.git"
    cd $package

    echo "# Building the package ..."
    makepkg -src
    makepkg_exit_code=$?
    if [ $makepkg_exit_code -ne 0 ]
    then
        echo "# Error building the package. Cleanup and skip to next ..."
        failed_packages="$failed_packages $package"
        cd $BUILD_REPO
        rm -r $package
        continue
    fi

    echo "# Moving the package to the appropriate spot ..."
    mv -v "${PWD}/${package}.*pkg.tar*" $REPO_DIR

    echo "# Adding the package to the database ..."
    cd $REPO_DIR
    repo-remove $DB_FILE  $package
    repo-add    $DB_FILE "$package.*pkg.tar*"
    cd $BUILD_DIR
done

# Cleanup
rm -r $BUILD_DIR

cd $OLDPWD
