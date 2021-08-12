#!/usr/bin/env bash

sudo apt-get update

#Install dependencies
sudo apt install software-properties-common apt-transport-https

#Import Microsoft GPG Key
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

#Enable VSCode repository
#sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

#sudo apt update
#sudo apt install code

# Register Microsoft key and feed
wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt-get update

# Intall dependencies 
wget http://ftp.us.debian.org/debian/pool/main/i/icu/libicu57_57.1-6+deb9u4_amd64.deb
sudo dpkg -i libicu57_57.1-6+deb9u4_amd64.deb

# Install .NET core SDK
sudo apt-get install dotnet-sdk-3.1
dotnet --version