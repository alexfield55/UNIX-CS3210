#!/bin/bash

#Write a bash shell script named `ex03.sh` and store the 
#`hostname` in a variable.  Display "We are jamming on `x`" where `x` is the output of the `hostname` command.

ret=$HOSTNAME
echo "We are jamming on $ret"