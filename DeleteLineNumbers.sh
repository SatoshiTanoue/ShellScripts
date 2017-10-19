#!/bin/bash

#Usage 
#sh DeleteLineNubers.sh DirectoryName
for file in $1/*.txt; do
    fileName=${file##*/}
    sed -e "s/^[0-9]*://" $file
done
