#!/bin/bash

function sync_repository() {
    rep_name=$0
    rep_url=$1
    pushd /var/jenkins_home/git-repository
    if [ -d $rep_name ]; then
        pushd $rep_name && git pull & git submodule update & popd
    else
        git clone $rep_url
    fi
    popd
    git clone /var/jenkins_home/git-repository/$rep_name
}

mkdir -p /var/jenkins_home/git-repository