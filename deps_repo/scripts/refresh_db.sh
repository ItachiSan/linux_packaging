#!/bin/bash

OLDPWD=`pwd`

MY_DIR=`readlink -f $0 | xargs dirname`
REPO_DIR=`dirname $MY_DIR`

cd $REPO_DIR

for package in *.pkg.*
do
    package_name=`echo $package | sed -E 's,^([a-z-]+)-.*$,\1,'`
    repo-remove aur_dependencies.db.tar.zst $package_name
    repo-add    aur_dependencies.db.tar.zst $package
done

cd $OLDPWD
