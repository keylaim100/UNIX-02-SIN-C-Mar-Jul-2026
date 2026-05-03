#relative path
cd calculadora/
#absolute path
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/calculadora
#l=list a=all i=inode
ls -lai
#the same but in separate way
ls -l -a -i
#displays detailed metadata for the current directory, where Device identifies the specific hardware partition storing the data, Inode represents the unique filesystem serial number for that entry, and Links shows the count of hard links pointing to that inode
stat .
# File: .
#  Size: 4096            Blocks: 8          IO Block: 4096   directory
#Device: 7,4     Inode: 1310843     Links: 2
#Access: (0777/drwxrwxrwx)  Uid: ( 1000/codespace)   Gid: ( 1000/codespace)
#Access: 2026-05-03 17:42:35.348068976 +0000
#Modify: 2026-05-03 17:42:33.758069089 +0000
#Change: 2026-05-03 17:42:33.758069089 +0000
# Birth: 2026-05-03 17:42:33.758069089 +0000

# change directory to home directory from any locaton of my operative system
cd 
# asbosulte route
cd /home/codespace
#shortcut
 cd ~
#enviroment variable
echo $HOME
#command displays the username
whoami
#lists all files and directories in long format, sorted by their modification time
ls -lt
#opens the comprehensive reference manual for the list directory contents utility
man ls
#lists the first five entries within the /dev directory, which contains special files
ls /dev | head -5
#lists the last five entries within the /etc directory, which traditionally stores the system-wide configuration files and subdirectories for the operating system
ls /etc | tail -5
