#!/bin/bash

#Write a bash shell script named `ex04.sh` to check if the "file_path" exists.  If it does exist, display "file_path passwords are enabled."  Next, check to see if you can write to the file.  If you can, display "r/w permissions enabled "file_path"".  If you cannot, display "r/w permissions disabled "file_path"".

#file path is first argument
file_path=$1

if [ -f $file_path ]; 
    then echo "$file_path passwords are enabled" ; 
        if [ -w $file_path ];
            then echo "r/w permissions enabled $file_path";
            else echo "r/w permissions disabled $file_path";
        fi
    else echo "$file_path doesn't exist"; 
fi

