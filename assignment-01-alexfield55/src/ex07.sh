#!/bin/bash

#Copy `ex06.sh` to `ex07.sh` and modify it so that it accepts the file or directory name as an argument instead of prompting the user to enter it.


file_path=$1

if [ $1 ];
    then
        if [ -f $file_path ]; 
            then echo "$file_path is a regular file" 
            ls -l $file_path;
        elif [ -d $file_path ]; 
            then echo "$file_path directory exists"
            ls -l $file_path;     
        else
            echo "$file_path is neither directory or regular file"
        fi
else 
    echo "requires arg"
fi