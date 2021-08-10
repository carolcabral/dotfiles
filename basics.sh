#!/usr/bin/env bash

sudo apt-get update -y 
sudo apt-get upgrade -y 
sudo apt-get autoremove -y 

sudo apt-get install sl git build-essential curl vim -y

#Git config 
./git-config.sh 

#Chrome
cd Downloads/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb



#VSCODE 
./vscode-install.sh



sudo shutdown -r now


