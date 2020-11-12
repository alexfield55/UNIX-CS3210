#!/bin/bash -x

#Write a shell script named `ex19.sh` that exits on error and displays the command as they will execute, including all expansions and substitutions. Use 3 `ls` commands in your script. Make the first one succeed, the second one fail, and third one succeed. If you are using the proper options, the third ls command not be execut

ret=$(ls test)
echo $ret
if [[ $ret==0 ]];
then exit 0;
else exit 1;
fi
ret=$(ls /homealdfakdjfd)
if [[ $ret==0 ]];
then exit 0;
else exit 1;
fi
ret=$(ls /home)
if [[ $ret==0 ]];
then exit 0;
else exit 1;
fi