# qemu-arch-script
This script created to quickly install Arch Linux
on my QEMU virtual machine for testing software. 
Do not use it for real installations. Please visit 
https://wiki.archlinux.org/title/installation_guide
for Installation guide. I created this script for
convenient installation on my VM.<br><br>


## Prerequisites
- QEMU virtual machine with EFI
- QEMU hard drive (VirtIO) that has 10 GB capacity.


## Use (Arch Linux Live CD)
`pacman -Sy git` <br>
`git clone https://github.com/thm-unix/qemu-arch-script` <br>
`cd qemu-arch-scripts` <br>
`chmod +x install.sh` <br>
`./install.sh`
