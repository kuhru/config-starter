#!/bin/zsh

nvim_install_setup() {
  # nvim install 
  ## -- from https://github.com/neovim/neovim/blob/master/INSTALL.md
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
  chmod u+x nvim.appimage
  ./nvim.appimage --appimage-extract
  ./squashfs-root/AppRun --version
  mv squashfs-root /
  ln -s /squashfs-root/AppRun /usr/bin/nvim
  rm -rf nvim.appimage

  mkdir -p ~/.config/nvim
  cp -r ./02-nvim/_dump/* ~/.config/nvim
}