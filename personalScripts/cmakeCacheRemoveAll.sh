#!/bin/bash

MAINFOLDER="../.." # This is "OHWorkspace/"

find ${MAINFOLDER} -name "CMakeFiles" | xargs rm -R
find ${MAINFOLDER} -name "CMakeCache.txt" | xargs rm