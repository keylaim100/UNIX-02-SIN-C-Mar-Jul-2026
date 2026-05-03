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


# Update the repositories and install the necessary tools (compilers, libraries, and emulator) to compile and test a Linux kernel from scratch
sudo apt update
sudo apt install -y git vim make gcc libncurses-dev flex bison bc \
cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86
# Download the latest version of the Linux kernel source code omitting all previous change history
git clone --depth 1 https://github.com/torvalds/linux.git
cd linux