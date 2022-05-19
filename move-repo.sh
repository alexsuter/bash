#!/bin/bash

#moving a git repository from one url
#to another url
# e.g. /move-repo.sh git@bitbucket.org:company/repo.git git@github.com:company/repo.git

sourceRepoUrl=$1
targetRepoUrl=$2

path=/tmp/$RANDOM.git
name=newrepo

git clone --bare ${sourceRepoUrl} ${path}
cd ${path}
git remote add ${name} ${targetRepoUrl}
git push --force --all ${name}
git push --force --tags ${name}
rm -rf ${path}
