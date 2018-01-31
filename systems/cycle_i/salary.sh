#!/bin/bash

# warn if no input
if [ -z $1 ]
then
    echo "salary: missing arguments"
    echo "Usage: salary.sh [BASIC]"
    exit
fi

# return gross when salary < 1500
if (( $1 < 1500 ))
then
    gross_salary=`echo "scale=2; $1 + ($1*(10/100)) + ($1*(90/100))" | bc`
    echo "gross salary is $gross_salary"
    exit
fi

if (( $1 >= 1500 ))
then
    gross_salary=`echo "scale=2; $1 + 500 + ($1*(98/100))" | bc`
    echo "gross salary is $gross_salary"
    exit
fi
