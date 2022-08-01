#/bin/bash -eux

mv ~/.config/nvim/init.vim ~/.config/nvim/install.vim
mv ~/.config/nvim/tmp.vim ~/.config/nvim/init.vim

cd ~
rm -rf ~/Myvim
rm -f ~/.bash*
