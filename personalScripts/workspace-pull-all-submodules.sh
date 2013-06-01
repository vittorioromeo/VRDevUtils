#!/bin/bash

MAINFOLDER="../.." # This is "OHWorkspace/"
FOLDERS=("SSVEntitySystem" "SSVLuaWrapper" "SSVUtils" "SSVUtilsJson" "SSVJsonCpp" "SSVOpenHexagon" "SSVSCollision" "SSVNewRogue" "SSVMenuSystem" "SSVStart" "SSVRPGSystem") # Consider gathering these with a loop?

for dir in ${FOLDERS[*]}; do 
	(cd ${dir}; git submodule foreach git pull origin master --recurse-submodules)
done