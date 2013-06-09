#!/bin/bash

MAINFOLDER="../.." # This is "OHWorkspace/"
FOLDERS=()

for dir in ${MAINFOLDER}/*; do 
	FOLDERS+=("${dir}")
done

for dir in ${FOLDERS[*]}; do 
	gitg
done