#relative path
cd calculadora/
#absolute path
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/calculadora

# Update the repositories and install the necessary tools (compilers, libraries, and emulator) to compile and test a Linux kernel from scratch
sudo apt update
sudo apt install -y git vim make gcc libncurses-dev flex bison bc \
cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86
