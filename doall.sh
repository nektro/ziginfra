#!/bin/sh

pwd=$PWD


for x in $(ls .zigmod/deps/git/github.com/nektro)
do
    [ "$GITHUB_ACTIONS" = "true" ] && echo ::group::$x
    path=".zigmod/deps/git/github.com/nektro/$x"
    echo $path
    cd $path
    $@
    [ "$GITHUB_ACTIONS" = "true" ] && echo ::endgroup::
    cd $pwd
done
