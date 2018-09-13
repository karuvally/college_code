#!/usr/bin/env python3
# find average

# serious stuff
import sys

# variables
input_list = sys.argv[1: len(sys.argv)]
average = 0
count = 0

for value in input_list:
    if int(value) >= 0:
        count += 1
        average += int(value)
print(average / count)
