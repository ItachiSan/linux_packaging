#!/bin/sh
shopt -s nullglob
old_dir=$(pwd)
work_dir=$(dirname $(readlink -f $0))

if [ ! -z $DEBUG ]
then
    OPTS='-v'
fi

echo "Adding repository hooks..."
cd $work_dir
for folder in ../.git/modules/*/hooks/ ../*/.git/hooks/; do
	echo -e "-> $folder"
	for hook in `ls -1 *.hook | grep -v _master`
    do
        ln -sf $OPTS "$(pwd)/${hook}" "${folder}${hook%.hook}"
	done
done

echo "Adding master repository hooks..."
cd $work_dir
for hook in `ls -1 *.hook | grep _master`
do
    ln -svf $OPTS "$(pwd)/${hook}" "../.git/hooks/${hook%_master.hook}"
done

cd $old_dir
echo "Done!"
