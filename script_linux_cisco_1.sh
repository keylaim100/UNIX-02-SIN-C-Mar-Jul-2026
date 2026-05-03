#shows a list of information about files
ls

#displays a playful text-based image of a cow in the terminal
aptitude moo
#result
#There are no Easter Eggs in this program

#displays directory contents in a long-listing format, showing detailed information such as file permissions, number of links, owner, group, file size, and the last modification date
ls -l

#lists the contents of the current directory in reverse alphabetical order
ls -r
#displays directory contents in a long-listing format while reversing the alphabetical sorting order
ls -lr 

#by adding -v you see another type of responses
aptitude -v moo
aptitude -vv moo
aptitude -vvv moo

#outputs the full absolute path of the current directory
pwd

#shifts your current terminal session to a different location
cd
#absolute route: allows you to specify the exact location of a directory. It always starts in the root directory, therefore it always starts with the / character
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026
#relative route: It locates a file in relation to the user's current location in the file system. Relative paths do not start with the / character, they start with the name of a directory
cd documentos/