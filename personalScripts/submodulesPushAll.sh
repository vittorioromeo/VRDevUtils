#!/bin/bash

MAINFOLDER="../.." # This is "OHWorkspace/"
FOLDERS=()

for dir in ${MAINFOLDER}/*; do 
	FOLDERS+=("${dir}")
done

for dir in ${FOLDERS[*]}; do 
	(cd $dir; git commit -am 'automated submodule update'; git push)
done