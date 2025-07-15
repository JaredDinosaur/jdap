import os
print("This script will not work without an internet connection!")
print("Please run this script as a user with sudo privileges (NOT root)!!!")
check=input("Enter 'ready' to run the script, or anything else to quit: ")
if check=="ready":
    os.system("sudo nano /etc/pacman.conf")
    print("1) None")
    print("2) GRUB")
    print("3) Limine")
    bledit=input("Enter a config to edit: ")
    if bledit=="2":
        os.system("sudo nano /boot/grub/grub.conf")
    if bledit=="3":
        os.system("sudo nano /boot/EFI/limine/limine.conf")
    os.system("sudo pacman -Sy git base-devel")
    os.system("git clone https://aur.archlinux.org/yay.git")
    os.system("cd yay && makepkg -si")
    os.system("yay -S firefox flatpak screenfetch tree htop partitionmanager plymouth vlc packagekit base-devel ark")
    os.system("clear")
    print("Script complete!")
