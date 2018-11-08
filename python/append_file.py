#!/usr/bin/env python3
# program to copy two files

# import the serious stuff
import argparse
import os


# the main function
def main():
    # define the command line args
    parser = argparse.ArgumentParser()
    parser.add_argument("input_file")
    parser.add_argument("output_file")
    arguments = parser.parse_args()
    
    # check if the file exists
    if not os.path.exists(arguments.input_file):
        print("the input file does not exist!")
        return 1
        
    # append the contents
    with open(arguments.input_file, "r") as input_file:
        output_file = open(arguments.output_file, "a")
        for line in input_file:
            output_file.write(line)

# call the main function
main()
