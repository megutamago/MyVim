#!/bin/bash

set -eu

cd ~
mkdir ~/.cache/shell
cp MyVim/.zshrc ~/.zshrc

rm .bashrc .bash_logout
rm -rf ~/Myvim
