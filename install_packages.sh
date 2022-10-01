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
