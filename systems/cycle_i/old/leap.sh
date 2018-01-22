#!/bin/bash

# exit if no input
if [ -z $1 ]
then
    echo "Usage: leap.sh YEAR"
    exit
fi

# check if year is divisible by 100
if (( $1 % 100 == 0 ))
then
    echo "not a leap year"
    exit
fi

# check if year is divisible by 4 or 400
if (( $1 % 4 != 0 ))
then
    exit
elif (( $1 % 400 != 0 ))
then
    exit
fi

# simple dump output
echo "$1 is a leap year"
