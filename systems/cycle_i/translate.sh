#!/bin/bash

# exit if no arguments
if [ -z $1 ]
then
    echo "Translate"
    echo "Usage: translate.sh [FILE_1] [FILE_2] [...]"
    exit
fi

# iterate through all the arguments
for file_path in $*
do
    # complement case, save output to temp file
    cat $file_path | tr '[:lower:][:upper:]' '[:upper:][:lower:]' > output.tmp
    
    # move the temp file to original location
    mv output.tmp $file_path
done
