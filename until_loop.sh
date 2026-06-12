#!/bin/bash

FILE="output1.txt"
#creates a variable named FILE and assigns the filename output.txt to it
touch "${FILE}"
#creates the file if it does not exist. If it already exists, updates its timestamp
until [[ -s "${FILE}" ]]; do
#starts a loop that continues until the file contains data the -s option checks whether the file exists and has a size greater than zero
echo "${FILE} is empty...."
#displays a message indicating that the file is still empty
echo "Checking again in 2 seconds..."
#informs the user that the script will check the file again after 2 seconds
sleep 2
#pauses the script execution for 2 seconds
done
#ends the loop once the file contains some content
echo "${FILE} appears to have some content in it!"
#prints a message when the file is no longer empty