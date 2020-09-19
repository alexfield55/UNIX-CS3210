#!/bin/bash

#Write a shell script named `ex12.sh` that consists of a function that displays the number of files in the present working directory. Name this function “file_count” and call it in your script. If you use variable in your function, remember to make it a local variable.

file_count ()
{
    ls | wc -l
}

file_count