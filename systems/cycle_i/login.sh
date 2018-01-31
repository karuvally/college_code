#!/bin/bash

# exit if no arguments
if [ -z $1 ]
then
    echo "Invalid arguments"
    echo "login.sh USER_NAME"
    exit
fi

# get the login time
login_time=`who | grep -i $1 | head -n 1 | tr -s " " | cut -d " " -f 4`

# exit if no output
if [ -z $login_time ]
then
    echo "user $1 is not logged in or does not exist"
    exit
fi

# print the login time
echo "user $1 logged in at $login_time"
