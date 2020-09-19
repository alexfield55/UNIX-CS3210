# Assignment 01 - Shell Scripting Exercises

This assignment will allow you to use what you have learned from the PluralSight assignment.  Put all the assignment files in the `src/` folder.

## Field, Alex (5 points)

`alexfield55`

## Exercise 01 (5 points)

Write a bash shell script named `ex01.sh` that prints "Linux programming is rock and roll!" on the screen.

## Exercise 02 (10 points)

Copy `ex01.sh` to `ex02.sh` from Exercise 01 and modify `ex02.sh` to include a variable that holds the text "Linux programming is rock and roll!".

## Exercise 03 (10 points)

Write a bash shell script named `ex03.sh` and store the `hostname` in a variable.  Display "We are jamming on `x`" where `x` is the output of the `hostname` command.

## Exercise 04 (10 points)

Write a bash shell script named `ex04.sh` to check if the "file_path" exists.  If it does exist, display "file_path passwords are enabled."  Next, check to see if you can write to the file.  If you can, display "r/w permissions enabled "file_path"".  If you cannot, display "r/w permissions disabled "file_path"".

## Exercise 05 (10 points)

Write a shell script named `ex05.sh` that displays “man”,”bear”,”pig”,”dog”,”cat”,and “sheep” on the screen with each appearing on a separate line. Try to do this in as few lines as possible.

## Exercise 06 (10 points)

Write a shell script named `ex06.sh` that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or another type of file. Also perform an ls command against the file or directory with the long listing option.

## Exercise 07 (10 points)

Copy `ex06.sh` to `ex07.sh` and modify it so that it accepts the file or directory name as an argument instead of prompting the user to enter it.

## Exercise 08 (10 points)

Copy `ex07.sh` to `ex08.sh` and modify it so that it accepts an unlimited number of files and directories.

## Exercise 09 (10 points)

Write a shell script named `ex09.sh` that displays, “This script will exit with 0 exit status.” Be sure that the script does indeed exit with a 0 exit status.

## Exercise 10 (10 points)

Write a shell script named `ex10.sh` that accepts a file or directory name as an argument. Have the script report if it is regular file, a directory, or another type of file. If it is a directory, exit with a 1 exit status. If it is some other type of file, exit with a 2 exit status.

## Exercise 11 (10 points)

Write a script named `ex11.sh` that executes the command `cat /etc/shadow`. If the command return a 0 exit status, report “command succeeded” and exit with a 0 exit status. If the command returns a non-zero exit status, report “Command failed” and exit with a 1 exit status.

## Exercise 12 (10 points)

Write a shell script named `ex12.sh` that consists of a function that displays the number of files in the present working directory. Name this function “file_count” and call it in your script. If you use variable in your function, remember to make it a local variable.

## Exercise 13 (10 points)

Copy `ex12.sh` to `ex13.sh` and modify it so that the the `file_count` function accept a directory as an argument. Next, have the function display the name of the directory followed by a colon. Finally display the number of files to the screen on the next line. Call the function three times. First on the `/etc` directory, next on the `/var` directory and finally on the `/usr/bin` directory.

## Exercise 14 (10 points)

Write the shell script named `ex14.sh` that renames all files in the current directory that end in `.jpg` to begin with today’s date in the following format: YYYY-MM-DD. For example, if a picture of a cat was in the current directory and today was October 31, 2016 it would change name from `mycat.jpg` to `2016–10–31-mycat.jpg`.  Use `/home/donstringham/img`.

## Exercise 15 (10 points)

Write the script named `ex15.sh` that renames files based on the file extension. Next, it should ask the user what prefix to pre-pend to the file name(s). By default, the prefix should be the current date in `YYYY-MM-DD` format. If the user simply press enter, the current date will be used. Otherwise, whatever the user entered will be used as the prefix. Next, it should display the original file name and new name of the file.  Finally, it should rename the file.

## Exercise 16 (10 points)

Create a script named `ex16.sh` that is a start-up script for an application start and stop.  Use `apachectl` as the application for the script.

## Exercise 17 (10 points)

Write the shell script named `ex17.sh` that displays one random number on the screen and also generates a system log message with that random number. Use the `user` facility and `info` facility for your messages.

## Exercise 18 (10 points)

Copy `ex17.sh` to `ex18.sh1` and modify it so that it uses a logging function. Additionally, tag each syslog message with “randomly” and include process ID. Generate a 3 random numbers.

## Exercise 19 (10 points)

Write a shell script named `ex19.sh` that exits on error and displays the command as they will execute, including all expansions and substitutions. Use 3 `ls` commands in your script. Make the first one succeed, the second one fail, and third one succeed. If you are using the proper options, the third ls command not be executed.

## Exercise 20 (10 points)

Copy `ex19.sh` to `ex20.sh` and modify it so that script continuous, even if an error occurs. This time, all three `ls` command will execute.
