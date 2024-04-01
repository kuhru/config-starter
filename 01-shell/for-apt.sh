#!/bin/sh

# update and upgrade

apt update && apt upgrade -y

# basic setup

apt install -y curl wget git nano which

# zsh and omz download

apt install -y zsh
chsh -s $(which zsh)

RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo ""

# zsh download needed plugins

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && echo ""
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && echo ""

# omz setup

cat ./01-shell/_zshrc_dump > ~/.zshrc