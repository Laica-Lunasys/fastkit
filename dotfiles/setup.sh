#!/bin/bash
set -e
cd "$(dirname "$0")"
source ../utils/*.sh

echo "WRN: This script currently for Ubuntu"

_check_requirements "git"

# Install depends
sudo apt install -y neovim vim nano tmux zsh curl wget

# Install dotfiles
cd $HOME
git clone https://github.com/Laica-Lunasys/dotfiles.git
cd dotfiles
make clean install
