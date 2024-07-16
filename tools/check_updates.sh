#!/bin/sh
_my_dir=`readlink -f $0 | xargs dirname`
_code_dir=`dirname $_my_dir`

pushd $_code_dir > /dev/null

# Refresh the "old.json" file
python3 tools/old_refresher.py

# Check for updates
nvchecker -c tools/nvchecker.toml

# Report updated
echo "# Packages to update:"
nvcmp -c tools/nvchecker.toml

popd > /dev/null
