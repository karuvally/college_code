#!/usr/bin/env python3
# program to copy two files

# import the serious stuff
import argparse
import shutil
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
    
    # copy the file
    shutil.copyfile(arguments.input_file, arguments.output_file)


# call the main function
main()
