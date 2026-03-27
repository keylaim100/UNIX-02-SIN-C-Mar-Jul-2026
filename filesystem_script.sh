#change directory to dev directory
cd /dev 
# list archives and directories
ls
#change directory to proc directory
cd /proc
#list process on proc directory
ls
# shows cpu information
cat cpuinfo
# helps us to move to the root directory
cd /
#list the files and the directories in the current directory
ls
# help to move to the bin directory
cd /bin
#list the files and the directories
ls
#To move to the directory where we have our code
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/
#compiles the C file and creates an executable file named saludo_bin
gcc saludo.c -o saludo_bin