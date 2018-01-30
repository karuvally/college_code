#!/bin/bash

# exit if no arguments
if [ -z $1 ] || [ -z $2 ]
then
    echo "Invalid arguments"
    echo "Usage: count_words.sh [FILE_NAME] [SEARCH_STRING]"
    exit
fi

# find the number of occurence
occurence=`cat $1 | grep -i -o $2 | wc -w`

# print output for non zero occurence
echo "there are $occurence occurences of the word $2 in $1"
