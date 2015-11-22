#!/bin/bash
echo "Adding commit hooks..."
shopt -s nullglob
old_dir=$(pwd)
work_dir=$(dirname $(readlink -f $0))
cd $work_dir
for folder in ../.git/modules/*/hooks/ ../*/.git/hooks/; do
	echo $folder
	for hook in *.hook; do
	ln -sf "$(pwd)/${hook}" "${folder}/${hook%.hook}"
	done
done
cd $old_dir
echo "Done!"
