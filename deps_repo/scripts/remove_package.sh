#!/bin/bash

OLDPWD=`pwd`

MY_DIR=`readlink -f $0 | xargs dirname`
REPO_DIR=`dirname $MY_DIR`

cd $REPO_DIR

for package_file in "$@"
do
    package_name=$(echo $package_file | sed -E "s,^([a-z0-9.-]+)-[a-z0-9.+]+-[0-9]+-($(uname -m)|any).pkg.tar.[a-z]+$,\1,")
    repo-remove aur_dependencies.db.tar.zst $package_name
    rm -v $package_file
done

cd $OLDPWD
