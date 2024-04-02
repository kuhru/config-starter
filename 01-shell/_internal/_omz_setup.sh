#!/bin/sh

omz_install_setup() {
  CHSH=no RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  chsh -s $(which zsh) && echo ""
  export SHELL=$(which zsh)

  # zsh download needed plugins

  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && echo ""
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && echo ""

  # omz setup

  cp ./_zshrc_dump ~/.zshrc
}