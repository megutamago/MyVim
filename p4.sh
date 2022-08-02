#!/bin/bash

set -eu

cd ~ && \
mkdir ~/.cache/shell && \
cp MyVim/.zshrc ~/.zshrc

rm -rf ~/Myvim
