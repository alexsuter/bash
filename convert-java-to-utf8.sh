#!/bin/bash

# script to convert java files from ISO_8859-1 to utf-8

# param 1: path to scan (default .)
path=${1:-.}

# param 1: file to convert
function migrate () {
  file=$1
  echo ${file}
  tmpFile=${file}.tmp

  cp --preserve ${file} ${tmpFile}
  iconv -f ISO_8859-1 -t UTF-8 -o ${tmpFile} ${file}
  mv ${tmpFile} ${file}
}
export -f migrate

find ${path} -name '*.java' -type f -exec bash -c 'migrate "$0"' {} \;
