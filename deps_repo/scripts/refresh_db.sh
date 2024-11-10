#!/bin/bash

OLDPWD=`pwd`

MY_DIR=`readlink -f $0 | xargs dirname`
REPO_DIR=`dirname $MY_DIR`

cd $REPO_DIR

for package in *.pkg.*
do
    repo-add -n -R aur_dependencies.db.tar.zst $package
done

cd $OLDPWD
