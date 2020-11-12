#!/bin/bash

#Write a shell script named `ex06.sh` that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or another type of file. Also perform an ls command against the file or directory with the long listing option.

read -p "Please enter the name of a file or directory"
file_path=$REPLY

if [ -f $file_path ]; 
    then echo "$file_path is a regular file" 
    ls -l $file_path;
elif [ -d $file_path ]; 
    then echo "$file_path directory exists"
    ls -l $file_path;     
else
    echo "$file_path is neither directory or regular file"
fi