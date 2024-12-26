#!/bin/sh

pwd=$PWD

for x in $(ls .zigmod/deps/git/git.sr.ht/~nektro)
do
    path=".zigmod/deps/git/git.sr.ht/~nektro/$x"
    echo $path
    cd $path
    $@
    cd $pwd
done

for x in $(ls .zigmod/deps/git/github.com/nektro)
do
    path=".zigmod/deps/git/github.com/nektro/$x"
    echo $path
    cd $path
    $@
    cd $pwd
done
