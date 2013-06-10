#!/bin/bash

MAINFOLDER="../.." # This is "OHWorkspace/"
SCRIPTSFOLDER="../repoScripts" # This is "OHWorkspace/VRDevUtils/repoScripts"
SCRIPTS=("init-repository.sh" "build-repository.sh") # Consider gathering these with a loop?
FOLDERS=()

for dir in ${MAINFOLDER}/*; do 
	FOLDERS+=("${dir}")
done

for script in ${SCRIPTS[*]}; do
	for dir in ${FOLDERS[*]}; do 
		if [ -f ${MAINFOLDER}/${dir}/${script} ]; then 
			cp ${SCRIPTSFOLDER}/${script} ${MAINFOLDER}/${dir}/
			echo 'updated' ${script} 'in' ${dir}
		fi
	done
done
