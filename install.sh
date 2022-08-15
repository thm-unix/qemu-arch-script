# This script created to quickly install Arch Linux
# on my QEMU virtual machine for testing software. 
# Do not use it for real installations. Please visit 
# https://wiki.archlinux.org/title/installation_guide
# for Installation guide. I created this script for
# convenient installation on my VM.

# Script is intended for use with EFI


# STEP 1: Partitioning, Formatting & Mounting
# I assume using QEMU hard drive (VirtIO) that has
# 10 GB capacity.
sfdisk /dev/vda < partition_map.txt

mkfs.vfat -F /dev/vda1
mkfs.ext4 -F /dev/vda2

mount /dev/vda2 /mnt
mkdir -p /mnt/boot/efi
mount /dev/vda1 /mnt/boot/efi


# STEP 2: Updating repo's & Installing all packages
pacman -Syy

pacstrap /mnt base base-devel linux linux-firmware linux-headers \
nano vim bash-completion git networkmanager grub efivar efibootmgr \
xorg sddm openbox ttf-ubuntu-font-family ttf-hack ttf-dejavu \
ttf-opensans xterm


# STEP 3: Chrooting to /mnt -> chroot.sh
cat chroot.sh | chroot /mnt bash


# STEP 4: Unmounting & Reboot
umount -R /mnt
reboot