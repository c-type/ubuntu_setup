#!/bin/bash

# Install NeoVim
## Install NeoVim itself
sudo apt-get install neovim
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

## Install pre-configured setup
git clone https://github.com/LunarVim/Neovim-from-scratch.git ~/.config/nvim

## Enable copy/paste
sudo apt install xsel

## Install Python support
pip install pynvim

## Install NodeJS
sudo apt install nodejs
sudo apt install npm
npm i -g neovim

# Install code formatting and linting
sudo apt install black
sudo apt install flake8

# Install ripgrep
sudo apt-get install ripgrep

# Install Sublime-Merge
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-merge

# Install Docker
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
