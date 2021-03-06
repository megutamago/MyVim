#!/bin/bash

set -eu

sudo apt install -y zsh

chsh -s $(which zsh)
rm .bashrc .bash_history .bash_profile
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

mkdir .cache/shell
zsh
