#!/bin/bash

#Write the shell script named `ex17.sh` that displays one random number on the screen and also generates a system log message with that random number. Use the `user` facility and `info` facility for your messages.

rand=$RANDOM 
echo $rand
logger -p user.info "$rand"
