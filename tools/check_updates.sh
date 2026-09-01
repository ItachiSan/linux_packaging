#!/bin/sh
_my_dir=`readlink -f $0 | xargs dirname`
_code_dir=`dirname $_my_dir`

pushd $_code_dir > /dev/null

# Collect all packages with PKGBUILD
packages=
for dir in */; do
    [[ -f "${dir}PKGBUILD" ]] && packages="$packages ${dir%%/}"
done

# Check for updates on all packages with a PKGBUILD
pkgctl version check -v $packages

popd > /dev/null
