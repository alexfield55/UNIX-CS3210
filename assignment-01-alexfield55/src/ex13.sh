#!/bin/bash

# Copy `ex12.sh` to `ex13.sh` and modify it so that the the `file_count` function accept a directory as an argument. Next, have the function display the name of the directory followed by a colon. Finally display the number of files to the screen on the next line. Call the function three times. First on the `/etc` directory, next on the `/var` directory and finally on the `/usr/bin` directory.


argin=$1

file_count ()
{
    local d=$1
    if [ -d $d ];
        then echo "Directory $d:"
        ls $d | wc -l;
    else
        echo "unknown directory";
    fi
}

file_count $argin
file_count /etc
file_count /var
file_count /usr/bin