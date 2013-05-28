#!/bin/bash

MAINFOLDER="../.."
SCRIPTSFOLDER="../repoScripts"
SCRIPTS=("init-repository.sh" "build-repository.sh")
FOLDERS=("SSVEntitySystem" "SSVLuaWrapper" "SSVUtils" "SSVUtilsJson" "SSVJsonCpp" "SSVSCollision" "SSVNewRogue" "SSVMenuSystem" "SSVStart")

for script in ${SCRIPTS[*]}; do
	for dir in ${FOLDERS[*]}; do if [ -f ${MAINFOLDER}/${dir}/${script} ]; then cp ${SCRIPTSFOLDER}/${script} ${MAINFOLDER}/${dir}/; fi; done
done
