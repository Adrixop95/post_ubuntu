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
wget https://github-production-release-asset-2e65be.s3.amazonaws.com/70777180/ac64ebba-2205-11e8-943f-a6f051d9ff74?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20180318%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20180318T141224Z&X-Amz-Expires=300&X-Amz-Signature=28a467473810fdc2213d06fd1ed7d7f4ca20f57f44b695be94dd7f19a3d3108f&X-Amz-SignedHeaders=host&actor_id=6369508&response-content-disposition=attachment%3B%20filename%3Dmailspring-1.1.5-amd64.deb&response-content-type=application%2Foctet-stream

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
