#!/bin/bash

#Write the script named `ex15.sh` that renames files based on the file extension. Next, it should ask the user what prefix to pre-pend to the file name(s). By default, the prefix should be the current date in `YYYY-MM-DD` format. If the user simply press enter, the current date will be used. Otherwise, whatever the user entered will be used as the prefix. Next, it should display the original file name and new name of the file.  Finally, it should rename the file.

if [[ $1 ]];then
    read -p "Please enter what you would like to prepend the file name with"

    if [ $REPLY ];
        then pre=$REPLY;
    else pre=$(date +%F);
    fi

    for f in *"$1"; do
        echo "$f"
        mv "$f" "$pre$f"
        echo "Original file: $f now named: $pre$f"
    done
else echo "need file ext arg";
fi