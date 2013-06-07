#!/bin/bash

MAINFOLDER="../.." # This is "OHWorkspace/"
FOLDERS=()

for dir in ${MAINFOLDER}/*; do 
	FOLDERS+=("${dir}")
done

for dir in ${FOLDERS[*]}; do 
	(cd ${dir}; git submodule foreach git stash; git submodule foreach git pull origin master --recurse-submodules)
done