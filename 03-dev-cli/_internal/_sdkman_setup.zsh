#!/bin/zsh

sdkman_install_setup_java() {
  # sdkman install
  ## https://sdkman.io/

  curl -s "https://get.sdkman.io" | bash
  source ~/.sdkman/bin/sdkman-init.sh

  # sdkman config

  mkdir -p ~/.sdkman/etcj
  cp ./_sdkman_dump ~/.sdkman/etc/config

  # java install for version passed from main file $1 [like 21.0.2-amzn]

  sdk install java $1


  # sdkman soffline to not phone home

  sdk offline enable
}
