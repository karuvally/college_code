#!/bin/bash

# give help and exit if no arguments
if [ -z $1 ] || [ -z $2 ]
then
    echo "Syntax: power.sh NUMBER POWER"
    exit
fi

# raise the number to power
power=`echo "$1 ^ $2" | bc`
echo "$1 raised to $2 is $power"
