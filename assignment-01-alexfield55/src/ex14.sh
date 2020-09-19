#!/bin/bash

#Write the shell script named `ex14.sh` that renames all files in the current directory that end in `.jpg` to begin with today’s date in the following format: YYYY-MM-DD. For example, if a picture of a cat was in the current directory and today was October 31, 2016 it would change name from `mycat.jpg` to `2016–10–31-mycat.jpg`.  Use `/home/donstringham/img`.

d=$(date +%F)

mv /home/donstringham/img/mycat.jpg /home/donstringham/img/$d-mycat.jpg