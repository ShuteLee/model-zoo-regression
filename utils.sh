#!/bin/bash

# function sync_repository() {
#     rep_name=$1
#     rep_url=$2
#     mkdir -p $GIT_REPOSTORY_PATH
#     pushd $GIT_REPOSTORY_PATH
#     if [ -d $rep_name ]; then
#         pushd $rep_name && git pull & git submodule update & popd
#     else
#         git clone $rep_url
#     fi
#     popd
#     git clone $GIT_REPOSTORY_PATH/$rep_name
# }

# export GIT_REPOSTORY_PATH=/var/jenkins_home/git-repository
