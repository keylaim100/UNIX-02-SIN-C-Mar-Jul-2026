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
parted -l # muestra las particones de los discos
lsblk -f # muestra la estructura de los discos, UUIDs (identificador unico de la particion) y espacios disponibles
loop # it creates a loop devide