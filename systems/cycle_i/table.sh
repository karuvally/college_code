#!/bin/bash

# exit if empty input
if [ -z $1 ]
then
    echo "Usage: table.sh VALUE"
    exit
fi

# for loop to build table
for i in {1..10}
do
    let product=$1*$i
    echo "$1 X $i = $product"
done
