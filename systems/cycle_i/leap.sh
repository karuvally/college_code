#!/bin/bash

# give help, exit on no argument
if [ -z $1 ]
then
    echo "Syntax: leap.sh YEAR"
    exit
fi

# check if year is multiple of 400
if (( $1 % 400 == 0 ))
then
    echo "$1 is a leap year"
    exit
fi

# check if year is multiple of 100
if (( $1 % 100 == 0 ))
then
    echo "$1 is not a leap year"
    exit
fi

# check if year is multiple of 4
if (( $1 % 4 == 0 ))
then
    echo "$1 is a leap year"
    exit
fi

echo "$1 is not a leap year"
