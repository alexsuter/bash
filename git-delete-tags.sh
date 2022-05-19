#!/bin/bash

#delete all tags local and remote matching the given pattern
#to another url
# e.g. /git-delete-tags.sh git@bitbucket.org:company/repo.git git@github.com:company/repo.git

repoUrl=$1
pattern=$2

path=/tmp/$RANDOM

git clone ${repoUrl} ${path}
cd ${path}

git tag | grep ${pattern}

echo -n "delete the tags (y/n)? "
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    git tag | grep ${pattern} | xargs -n 1 git push --delete origin
else
    echo "abort"
fi

rm -rf ${path}
