# It is used to update URLs and libraries. 
sudo apt update 
# It is used to install the latest versions of libraries. 
sudo apt upgrade
# installs the parted software package
sudo apt install
# Install the NumPy library in Python to make calculations
pip install numpy
# full report and organization of the disks
sudo parted -l && echo -e "\n--- \n" && lsblk -f && echo -e "\n --- \n"
parted -l # It shows the disk partitions.
lsblk -f # It displays the disk structure, UUIDs (unique partition identifier), and available space.
loop # it creates a loop devide
# conditional test, asks if the directory '/sys/firmware/efi' exists
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS" #-d check if it's a directory

echo "mi archivo" > test.txt
stat test.txt #Look at the blocks that the file uses.
#  File: test.txt
#  Size: 11              Blocks: 8          IO Block: 4096   regular file
#Device: 7,4     Inode: 1573133     Links: 1
#Access: (0666/-rw-rw-rw-)  Uid: ( 1000/codespace)   Gid: ( 1000/codespace)
#Access: 2026-03-30 15:48:45.902930503 +0000
#Modify: 2026-03-30 15:48:45.902930503 +0000
#Change: 2026-03-30 15:48:45.902930503 +0000
# Birth: 2026-03-30 15:48:45.902930503 +0000