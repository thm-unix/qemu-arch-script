# This script created to quickly install Arch Linux
# on my QEMU virtual machine for testing software. 
# Do not use it for real installations. Please visit 
# https://wiki.archlinux.org/title/installation_guide
# for Installation guide. I created this script for
# convenient installation on my VM.

# Script is intended for use with EFI
# I assume using QEMU hard drive (VirtIO)


# STEP 1: Installing bootloader
grub-install --target=x86_64-efi --efi-directory=/boot/efi /dev/vda
grub-mkconfig -o /boot/grub/grub.cfg


# STEP 2: Creating users & Changing passwords
useradd -m thm
echo 'thm:1' | chpasswd
echo 'root:1' | chpasswd

echo 'thm ALL=(ALL:ALL) ALL' >> /etc/sudoers


# STEP 3: Enabling services
systemctl enable NetworkManager
systemctl enable sddm


# STEP 4: Setting locale
echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen
echo 'LANG=en_US.UTF-8' > /etc/locale.conf
