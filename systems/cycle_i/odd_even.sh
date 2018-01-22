#!/bin/bash

# declare variables
odd_sum=0
even_sum=0
counter=0

# accept the limit
echo -n "enter the limit: "
read limit 

# loop to read the numbers
while [ $counter -lt $limit ]
do
    read number
    if (( $number % 2 == 0 ))
    then
        let even_sum=$even_sum+$number
    else
        let odd_sum=$odd_sum+$number
    fi

    # increment counter
    let counter=$counter+1
done

# print the sums
echo "odd sum is $odd_sum"
echo "even sum is $even_sum"
echo "total sum is `expr $odd_sum + $even_sum`"
