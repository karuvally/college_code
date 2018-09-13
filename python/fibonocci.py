#!/usr/bin/env python3
# fibonocci series

# serious stuff
import sys

# variables
previous_value = 0
current_value = 1
limit = int(input("limit> "))

# fibonocci
if limit == 0:
    sys.exit()

if limit >= 1:
    print(previous_value, end = " ")

if limit > 1:
    for i in range(1, limit):
        tmp = current_value
        current_value += previous_value
        previous_value = tmp

        print(previous_value, end = " ")
