#!/bin/bash

#Created by Adrian Rupala
#Post installation script for Ubuntu and another apt/deb based linux distriburions.

#Update and upgrade everything.
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

#Prepare folder for downloaded packeges
cd ~/Downloads
mkdir post_download
cd post_download

#Download deb packages
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://dl.discordapp.net/apps/linux/0.0.4/discord-0.0.4.deb
wget https://go.skype.com/skypeforlinux-64.deb
wget https://github.com/Foundry376/Mailspring/releases/download/1.1.5/mailspring-1.1.5-amd64.deb

cd ~/

#Add keys and repos
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
sudo add-apt-repository ppa:dawidd0811/neofetch -y
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'


#Install packages
sudo apt-get update
sudo apt-get install code git vim nano htop vlc spotify-client openjdk-8-jre openjdk-8-jdk python-pip netbeans virtualbox neofetch steam -y

#Python-pip update and install packages
sudo pip install pip --upgrade
sudo pip install speedtest-cli

#Install deb packages
cd ~/Downloads/post_download
sudo dpkg -i *.deb
sudo apt-get install -f -y

#Create git folder on Documents
mkdir ~/Documents/git

#Create wallpaper folder and set random wallpaper from Unsplash
mkdir ~/Pictures/wallpapers
cd ~/Pictures/wallpapers
wget -q -O unsplash_wallpaper.jpg https://unsplash.it/1920/1080/?random
gsettings set org.gnome.desktop.background picture-uri file://$PWD/unsplash_wallpaper.jpg
cd ~/

#Cleanup
sudo rm -rf ~/Downloads/post_download
sudo apt-get purge firefox thunderbird rhythmbox gnome-mahjongg gnome-mines gnome-sudoku aisleriot -y
sudo apt-get autoremove -y
sudo apt-get clean -y
sudo reboot now
