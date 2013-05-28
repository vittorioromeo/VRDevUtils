#!/bin/bash

MAINFOLDER="../.." # This is "OHWorkspace/"
SCRIPTSFOLDER="../repoScripts" # This is "OHWorkspace/VRDevUtils/repoScripts"
SCRIPTS=("init-repository.sh" "build-repository.sh") # Consider gathering these with a loop?
FOLDERS=("SSVEntitySystem" "SSVLuaWrapper" "SSVUtils" "SSVUtilsJson" "SSVJsonCpp" "SSVSCollision" "SSVNewRogue" "SSVMenuSystem" "SSVStart") # Consider gathering these with a loop?

for script in ${SCRIPTS[*]}; do
	for dir in ${FOLDERS[*]}; do if [ -f ${MAINFOLDER}/${dir}/${script} ]; then cp ${SCRIPTSFOLDER}/${script} ${MAINFOLDER}/${dir}/; fi; done
done
