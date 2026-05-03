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
#moves your current session one level up in the filesystem
cd..
#changes your current directory to your user's home directory
cd ~

ls -l /var/log/ #displays the long-format list of log files including permissions, owners, and sizes, sorted alphabetically by name
ls -lt /var/log #shows the long-format list of logs sorted by modification time, placing the most recently updated log files at the very top
ls -l -S /var/log  #provides the long-format list of logs sorted by file size, showing the largest log files first to help identify which ones are consuming the most disk space
ls -lSr /var/log #lists the logs in long format but reverses the size sort, displaying the smallest files first and the largest ones at the bottom of the list
ls -r /var/log   # simply lists the names of the files in the log directory in reverse alphabetical order without providing extra file details

#allows you to temporarily act as a different user by creating a new shell
su
#allows a user to run a command as another user without having to create a new shell
sudo

#is used to change the access permissions of files and directories, controlling who can read (r), write (w), or execute (x) them
chmod
#grants the owner (user) of the file named hello.sh the permission to execute it as a program
chmod u+x hello.sh
./ #This indicates that the 'command' must be executed from the current directory

#is used to change the user and/or group ownership of a file or directory.
chown
#changes the ownership of the file hello.sh to the root user
sudo chown root hello.sh
#runs the script named hello.sh located in the current directory with root privileges
sudo ./hello.sh
