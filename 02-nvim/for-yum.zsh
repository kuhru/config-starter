#!/bin/zsh

# update and upgrade

yum upgrade -y

# basic setup vi and vim

yum install -y vi vim


# nvim install 
## -- from https://github.com/neovim/neovim/blob/master/INSTALL.md

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
mv squashfs-root /
ln -s /squashfs-root/AppRun /usr/bin/nvim

# configure basic nvim
## https://mattermost.com/blog/how-to-install-and-set-up-neovim-for-code-editing/

mkdir -p ~/.config/nvim
cp -r 02-nvim/_dump/* ~/.config/nvim
