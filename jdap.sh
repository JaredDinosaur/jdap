#!/bin/bash

echo "This script will not work without an internet connection!"
echo "Please run this script as a user with sudo privileges (NOT root)!"
echo "Press Enter to continue or Ctrl+C to exit..."
read

sudo nano /etc/pacman.conf
echo "1) Skip"
echo "2) Edit GRUB configuration"
echo "3) Edit Limine configuration"
echo "Enter your choice:"
read choice
case $choice in
    2)
        sudo nano /etc/default/grub
        sudo grub-mkconfig -o /boot/grub/grub.cfg
        sudo nano /boot/grub/grub.cfg
        ;;
    3)
        sudo nano /boot/limine/limine.conf
        ;;
    *)
        ;;
esac
sudo pacman -Sy git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S firefox flatpak neofetch screenfetch fastfetch tree htop btop partitionmanager plymouth vlc packagekit base-devel ark waybar hyprpaper thunar wofi
clear
echo
echo "Done!"
echo