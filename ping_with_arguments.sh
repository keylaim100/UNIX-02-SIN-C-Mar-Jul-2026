#!/bin/bash
# This script will ping any address provided as an argument.
SCRIPT_NAME="${0}"
TARGET="${1}"
echo "Running the script ${SCRIPT_NAME}..."
echo "Pinging the target: ${TARGET}..."
ping -c 4 "${TARGET}"

#bash ping_with_arguments.sh 127.0.0.1

echo "The arguments are: $@"
echo "The total number of arguments is: $#"