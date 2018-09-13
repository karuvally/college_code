#!/usr/bin/env python3
# check if input number is harshad

# serious stuff
import sys

# essential variables
input_value = input(">")
sum_of_digits = 0

# do the sum
for digit in [int(x) for x in input_value]:
    sum_of_digits += digit

if int(input_value) % sum_of_digits == 0:
    print(True)
else:
    print(False)
