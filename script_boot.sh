#relative path
cd calculadora/
#absolute path
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/calculadora
#l=list a=all i=inode
ls -lai
#the same but in separate way
ls -l -a -i
# Update the repositories and install the necessary tools (compilers, libraries, and emulator) to compile and test a Linux kernel from scratch
sudo apt update
sudo apt install -y git vim make gcc libncurses-dev flex bison bc \
cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86
# Download the latest version of the Linux kernel source code omitting all previous change history
git clone --depth 1 https://github.com/torvalds/linux.git
cd linux