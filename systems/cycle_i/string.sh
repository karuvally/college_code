#!/bin/bash

# exit if no arguments
if [ -z $1 ] || [ -z $2 ]
then
    echo "string: invalid arguments"
    echo "Usage: string.sh [-l] [-e] [STRING] [START] [END]"
    exit
fi

# print length
if [ "$1" == "-l" ]
then
    length=`expr length $2`
    echo "length of $2 is $length characters"
        length=`expr length $2`
        echo "length of $2 is $length characters"
    exit
fi

# extract substring
if [ "$1" == "-e" ]
then
    string_extract=`echo $2 | cut -c$3-$4`
    echo "The substring is $string_extract"
    exit
fi
