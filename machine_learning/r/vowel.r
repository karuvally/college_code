#!/usr/bin/env Rscript

input_string <- "this is fun"
input_string_split <- strsplit(input_string, "")

count <- 0

for (character in input_string_split) {
    if (character == 'a' || character == 'e' || character == 'i' ||
        character == 'o' || character == 'u') {
            count += 1
        }
}

print(count)
