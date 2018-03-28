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
wget https://az764295.vo.msecnd.net/stable/79b44aa704ce542d8ca4a3cc44cfca566e7720f1/code_1.21.1-1521038896_amd64.deb

cd ~/

#Add keys and repos
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
sudo add-apt-repository ppa:dawidd0811/neofetch -y
sudo add-apt-repository ppa:sunderme/texstudio -y
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

#Install packages
sudo apt-get update
<<<<<<< HEAD
sudo apt-get install git vim nano htop vlc redshift texlive-full texmaker texstudio redshift-gtk spotify-client openjdk-8-jre openjdk-8-jdk python-pip netbeans virtualbox neofetch steam -y
=======
sudo apt-get install git vim nano htop vlc clang redshift redshift-gtk spotify-client openjdk-8-jre openjdk-8-jdk python-pip netbeans virtualbox neofetch steam -y
>>>>>>> fc755673d7c3f8664cc62b9db9203dbfddd1f6ba

#Python-pip update and install packages
sudo pip install pip --upgrade
sudo pip install speedtest-cli

#Install deb packages
cd ~/Downloads/post_download
sudo dpkg -i *.deb
sudo apt-get install -f -y

#Create git folder on Documents
mkdir ~/Documents/git

#Create wallpaper folder and set wallpaper from Unsplash or another source
mkdir ~/Pictures/wallpapers
cd ~/Pictures/wallpapers
#wget -q -O unsplash_wallpaper.jpg https://unsplash.it/1920/1080/?random
wget -q -O unsplash_wallpaper.jpg https://i.imgur.com/i7NfNSK.jpg
gsettings set org.gnome.desktop.background picture-uri file://$PWD/unsplash_wallpaper.jpg
cd ~/

#Cleanup
sudo rm -rf ~/Downloads/post_download
sudo apt-get purge rhythmbox gnome-mahjongg gnome-mines gnome-sudoku aisleriot -y
sudo apt-get autoremove -y
sudo apt-get clean -y
sudo reboot now
