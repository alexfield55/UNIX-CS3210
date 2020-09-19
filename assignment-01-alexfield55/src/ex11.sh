#!/bin/bash

#Write a script named `ex11.sh` that executes the command `cat /etc/shadow`. If the command return a 0 exit status, report “command succeeded” and exit with a 0 exit status. If the command returns a non-zero exit status, report “Command failed” and exit with a 1 exit status.
cat /etc/shadow
ret=$?
if [ $ret == 0 ];
    then echo "command succeeded"
    exit 0;
    else echo "command failed"
    exit 1;
fi 