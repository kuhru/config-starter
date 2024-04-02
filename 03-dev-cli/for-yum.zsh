#!/bin/sh

# update and upgrade
## pre-requisite are [zip unzip findutils tar, installed in 01]

yum upgrade -y

source ./_internal/_sdkman_setup.zsh
sdkman_install_setup_java 21.0.2-amzn

source ./_internal/_pnpm_setup.zsh
pnpm_install_setup_node_npm 20.12.0