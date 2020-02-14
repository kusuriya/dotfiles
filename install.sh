#!/usr/bin/env sh
# OS Setup Scripts

export DOTFILES=$PWD

case "$OSTYPE" in
  darwin*)
    $DOTFILES/macos/install.sh;;
esac
