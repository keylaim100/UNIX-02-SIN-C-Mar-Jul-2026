#!/bin/bash 
PUBLISHER="No Starch Press" 
print_name(){ 
    local name 
    name="Black Hat Bash" 
    echo "${name} by ${PUBLISHER}" 
    } 
print_name 
echo "Variable ${name} will not be printed because it is a l ocal variable."

#difference between local and global variable
#global, this variable is available to the entire program

#local, this variable is declared inside a specific block using "local", when the script tries to use it outside in the final echo, it comes up empty because it "does not exist" outside the function

#invoking a function in bash
#Functions in Bash share the script's global environment, but they execute sequentially and destroy their local scope upon completion