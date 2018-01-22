#!/usr/bin/env Rscript

input_number <- strtoi(readLines("stdin", n=1))

if((input_number%%2) == 0) {
    print('even')
} elsei {
    print('odd')
}
