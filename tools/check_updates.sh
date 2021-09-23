#!/bin/sh
_my_dir=`readlink -f $0 | xargs dirname`
_code_dir=`dirname $_my_dir`
aur-out-of-date -config "$_my_dir/aur-out-of-date.json" -devel -local "$_code_dir"/**/.SRCINFO
