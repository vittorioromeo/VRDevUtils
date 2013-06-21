#!/bin/bash

MAINFOLDER="../.." # This is "OHWorkspace/"

find ${MAINFOLDER} -name "CMakeFiles" | xargs rm -R
find ${MAINFOLDER} -name "CMakeCache.txt" | xargs rm
find ${MAINFOLDER} -name "cmake_install.cmake" | xargs rm -R
find ${MAINFOLDER} -name "build.ninja" | xargs rm -R
find ${MAINFOLDER} -name "rules.ninja" | xargs rm -R