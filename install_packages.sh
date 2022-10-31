#!/bin/bash

# Install NeoVim
## Install NeoVim itself
sudo apt-get install neovim -y
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
