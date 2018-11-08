#!/usr/bin/env python3
# program to return number of lines in file

# import the serious stuff
import argparse
import os


# the main function
def main():
    # define the parser
    parser = argparse.ArgumentParser()
    parser.add_argument("input_file")
    arguments = parser.parse_args()
    
    # check if the file exists
    if not os.path.exists(arguments.input_file):
        print("file does not exist")
        return 1
    
    # count the number of lines
    number_of_lines = 0
    with open(arguments.input_file, "r") as input_file:
        for line in input_file:
            number_of_lines += 1
    
    # return the number of lines
    print(number_of_lines)

# call the main function
main()
