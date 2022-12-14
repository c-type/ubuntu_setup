#!/bin/bash

# Install NeoVim
## Install NeoVim itself
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim -y

## Install pre-configured setup
git clone git@github.com:c-type/nvim_setup.git ~/.config/nvim

## Enable copy/paste
sudo apt install xsel -y

## Install Python support
pip install pynvim

## Install NodeJS
sudo apt install nodejs -y
sudo apt install npm -y
npm i -g neovim

# Install code formatting and linting
sudo apt install black -y
sudo apt install flake8 -y

# Install ripgrep
sudo apt-get install ripgrep -y

# Install Sublime-Merge
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-merge -y

# # Install Docker
# sudo apt-get install \
#     ca-certificates \
#     curl \
#     gnupg \
#     lsb-release
# sudo mkdir -p /etc/apt/keyrings
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
# echo \
#   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# sudo apt-get update
# sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Install terminator
sudo apt-get install terminator -y

# Install KeePassXC
sudo apt install keepassxc -y

# Install Sublime Texteditor
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common -y
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt install sublime-text -y

# Install Steam
sudo apt install steam-installer -y

# VLC
sudo apt install vlc -y

# Python
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update
sudo apt install python3.8 -y
sudo apt install python-is-python3 -y

# pip
sudo apt install python3-pip -y

# python packages
pip install numpy
pip install pytest

# ipython
pip install ipython

# libfuse2
sudo add-apt-repository universe
sudo apt install libfuse2 -y

# Mendeley
sudo mkdir $HOME/Mendeley
sudo wget https://desktop-download.mendeley.com/download/apt/pool/main/m/mendeleydesktop/mendeleydesktop_1.19.4-stable_amd64.deb -P $HOME/Mendeley
# Follow steps here to actually install Mendeley https://askubuntu.com/questions/1405042/how-to-install-mendeley-on-ubuntu-22-04
# VLC
sudo apt-get install vlc -y

# Signal Messanger
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop
