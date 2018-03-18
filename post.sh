#!/bin/bash

#Created by Adrian Rupala
#Post installation script for Ubuntu and another apt/deb based linux distriburions.

#Update and upgrade everything.
sudo apt-get update
sudo apt-get upgrade

#Prepare folder for downloaded packeges
cd ~/Downloads
mkdir post_download
cd post_download

#Download deb packages
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://dl.discordapp.net/apps/linux/0.0.4/discord-0.0.4.deb
wget https://github.com/atom/atom/releases/download/v1.25.0/atom-amd64.deb
wget https://go.skype.com/skypeforlinux-64.deb
wget https://github.com/Foundry376/Mailspring/releases/download/1.1.5/mailspring-1.1.5-amd64.deb

cd ~/

#Add keys and repos
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
sudo add-apt-repository ppa:dawidd0811/neofetch -y
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

#Install packages
sudo apt-get update
sudo apt-get install git vim nano htop vlc spotify-client openjdk-8-jre openjdk-8-jdk python-pip netbeans virtualbox neofetch -y

#Python-pip update and install packages
sudo pip install pip --upgrade
sudo pip install speedtest-cli

#Install deb packages
cd ~/Downloads/post_download
sudo dpkg -i *.deb
sudo apt-get install -f -y

#Cleanup
sudo rm -rf ~/Downloads/post_download
sudo apt-get autoremove
sudo apt-get clean
