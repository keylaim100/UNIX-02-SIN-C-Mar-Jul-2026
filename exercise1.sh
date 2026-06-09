#!/bin/bash

#store the user information
FIRST_NAME="$1"
LAST_NAME="$2"

#generate the file with today's date
date +"%d-%m-%Y" > output.txt

#add the complete name to the file
echo "$FIRST_NAME $LAST_NAME" >> output.txt

#save a copy of the generated file
cp output.txt backup.txt

#show the final result on the terminal
cat output.txt