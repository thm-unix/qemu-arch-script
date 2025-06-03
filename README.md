# qemu-arch-script
This script is created for quick installation of Arch Linux
on my QEMU/KVM virtual machine for software testing purposes. 
Do not use it for real installations. Please visit 
https://wiki.archlinux.org/title/installation_guide
for Installation guide. I created this script for the
convenient installation on my VM.<br><br>


## Prerequisites
- QEMU virtual machine with EFI
- 10 GB QEMU hard drive (VirtIO)


## Usage (Arch Linux Live CD)
`pacman -Sy git` <br>
`git clone https://github.com/thm-unix/qemu-arch-script` <br>
`cd qemu-arch-script` <br>
`chmod +x install.sh` <br>
`./install.sh`
