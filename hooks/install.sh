#!/bin/bash
echo "Adding commit hooks..."
shopt -s nullglob
	for folder in ../.git/modules/*/hooks/ ../*/.git/hooks/; do
		for hook in *.hook; do
		ln -sf "$(pwd)/${hook}" "${folder}/${hook%.hook}"
		done
	done
echo "Done!"
