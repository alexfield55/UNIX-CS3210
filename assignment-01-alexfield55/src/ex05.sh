#!/bin/bash

#Write a shell script named `ex05.sh` that displays “man”,”bear”,”pig”,”dog”,”cat”,and “sheep” on the 
#screen with each appearing on a separate line. Try to do this in as few lines as possible.

myarray=(man bear pig dog cat sheep)
for i in "${myarray[@]}"; do echo "$i"; done
