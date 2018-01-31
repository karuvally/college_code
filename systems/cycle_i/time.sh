#!/bin/bash

# exit if no arguments
if [ -z $1 ]
then
    echo "Time: Invalid arguments"
    echo "Usage: time.sh USER_NAME"
    exit
fi

# get the login time
login_time=`who | grep -i $1 | head -n 1 | tr -s " " | cut -d " " -f 3-4`

# exit if no output
if [ -z "$login_time" ]
then
    echo "user $1 is not logged in or does not exist"
    exit
fi

# convert login_time to unix time
unix_login_time=`date --date="$login_time" +"%s"`

# convert current time to unix time
unix_current_time=`date +"%s"`

# take difference of the time
let unix_usage_time=unix_current_time-unix_login_time

# convert unix_usage_time to normal time
let hours=$unix_usage_time/3600
let minutes=($unix_usage_time%3600)/60
let seconds=($unix_usage_time%3600)%60

# print the usage time
echo "$1 has been logged in for $hours hours, $minutes minutes and $seconds seconds"
