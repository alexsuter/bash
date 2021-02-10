#!/bin/bash

# git only saves if a file is executable or not
# this script removes the executable flag on all
# java files

# param 1: path to scan (default .)
path=${1:-.}

# param 1: file to convert
function migrate () {
  file=$1
  echo ${file}
  # remove executable flag
  git update-index --chmod=-x $file
}
export -f migrate

find ${path} -name '*.java' -type f -exec bash -c 'migrate "$0"' {} \;
