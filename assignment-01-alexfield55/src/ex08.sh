#!/bin/bash

#Copy `ex07.sh` to `ex08.sh` and modify it so that it accepts an unlimited number of files and directories.

file_path=$*

while [[ $1 ]]; do
    
        if [ -f $file_path ]; 
            then echo "$file_path is a regular file" 
            ls -l $file_path;
        elif [ -d $file_path ]; 
            then echo "$file_path directory exists"
            ls -l $file_path;     
        else
            echo "$file_path is neither directory or regular file"
        fi
    shift
done