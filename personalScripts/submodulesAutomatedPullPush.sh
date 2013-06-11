#!/bin/bash

./vrDevUtilsUpdateAll.sh
./submodulesPullAll.sh
./submodulesPushAll.sh
./submodulesPullAll.sh
./submodulesPushAll.sh

echo 'Done automated submodules push/pull'