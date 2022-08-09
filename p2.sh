#/bin/bash

set -eu

mv ~/.config/nvim/init.vim ~/.config/nvim/install.vim
mv ~/.config/nvim/tmp.vim ~/.config/nvim/init.vim

sudo apt install -y zsh

chsh -s $(which zsh)
