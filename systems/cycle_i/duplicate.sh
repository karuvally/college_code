#!/bin/bash

# exit if no arguments
if [ -z $1 ]
then
    echo "Duplicate"
    echo "Usage: duplicate.sh [FILE_1] [FILE_2]"
    exit
fi

# check and delete duplicates
if diff $1 $2 > /dev/null
then
    echo "deleting $2"
    rm $2

else
    echo "the files are unique"
fi
