#!/bin/zsh

pnpm_install_setup_node_npm() {
  # pnpm install
  ## https://pnpm.io/installation

  curl -fsSL https://get.pnpm.io/install.sh | sh -
  source ~/.zshrc

  # pnpm env global use for node version passed from main file $1 [like 20.12.0]

  pnpm env use -g $1

  # add pnpm completions to command line

  pnpm install-completion zsh
  source ~/.zshrc
}