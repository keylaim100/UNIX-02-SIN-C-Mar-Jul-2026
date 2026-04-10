#!/bin/bash
# 1. Instalación
sudo apt update
sudo apt install -y git vim make gcc libncurses-dev flex bison bc \
  cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86

# 2. Kernel
if [ ! -d "linux" ]; then
    git clone --depth 1 https://github.com/torvalds/linux.git
fi
cd linux
make defconfig
make -j $(nproc)
sudo mkdir -p /boot-files
sudo cp arch/x86/boot/bzImage /boot-files/
cd ..

# 3. BusyBox
if [ ! -d "busybox" ]; then
    git clone --depth 1 https://git.busybox.net/busybox
fi
cd busybox
make defconfig
sed -i 's/# CONFIG_STATIC is not set/CONFIG_STATIC=y/' .config
make -j $(nproc)
sudo mkdir -p /boot-files/initramfs
sudo make CONFIG_PREFIX=/boot-files/initramfs install
cd ..

# 4. Initramfs
cd /boot-files/initramfs
sudo bash -c 'cat <<INNER > init
#!/bin/sh
mount -t devtmpfs devtmpfs /dev
mount -t proc proc /proc
mount -t sysfs sysfs /sys
echo "--- DISTRO MINIMA CARGADA ---"
/bin/sh
INNER'

sudo chmod +x init
sudo rm -f linuxrc
sudo find . | cpio -o -H newc > ../init.cpio
cd ..

# 5. Imagen de Boot
dd if=/dev/zero of=boot bs=1M count=50
mkfs.vfat boot
syslinux boot
mkdir -p m
sudo mount -o loop boot m
sudo cp bzImage init.cpio m
sudo umount m

echo "--- TODO LISTO ---"
echo "Ejecuta: qemu-system-x86_64 -nographic -append 'console=ttyS0' -kernel bzImage -initrd init.cpio"
