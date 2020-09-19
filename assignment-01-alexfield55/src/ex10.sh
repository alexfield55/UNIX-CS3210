#!/bin/bash

#Write a shell script named `ex10.sh` that accepts a file or directory name as an argument. Have the script report if it is regular file, a directory, or another type of file. If it is a directory, exit with a 1 exit status. If it is some other type of file, exit with a 2 exit status.

file_path=$1

if [ $1 ];
    then
        if [ -f $file_path ]; 
            then echo "$file_path is a regular file" 
            ls -l $file_path
            exit 0;
        elif [ -d $file_path ]; 
            then echo "$file_path directory exists"
            ls -l $file_path
            exit 1;     
        else
            echo "$file_path is neither directory or regular file"
            exit 2;
        fi
else 
    echo "requires arg"
fi