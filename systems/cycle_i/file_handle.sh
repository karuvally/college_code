#!/bin/bash

# exit if no arguments
if [ -z $1 ] || [ -z $2 ]
then
    echo "Invalid arguments"
    echo "Usage: file_handle.sh [-c] [-d] [-r] [-l] SOURCE [DESTINATION]"
    exit
fi

# check arguments and act accordingly
if [ "$1" == "-c" ]
then
    echo "copying $2 to $3"
    cp $2 $3

elif [ "$1" == "-d" ]
then
    echo "removing $2"
    rm $2

elif [ "$1" == "-r" ]
then
    echo "renaming $2 to $3"
    mv $2 $3

elif [ "$1" == "-l" ]
then
    echo "linking $2 to $3"
    ln -s $2 $3
fi
