#!/bin/bash

#Copy `ex17.sh` to `ex18.sh1` and modify it so that it uses a logging function. Additionally, tag each syslog message with “randomly” and include process ID. Generate a 3 random numbers.


randlogger(){
    rand1=$RANDOM 
    rand2=$RANDOM 
    rand3=$RANDOM 
    echo $rand
    logger -i "randomly $rand1$rand2$rand3"
}

randlogger
