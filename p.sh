#/bin/bash -eux

cp ~/MyVim/.colorrc ~/

### color config
cat >> ~/.bashrc <<EOF

###Add
eval /`dircolors ~/.colorrc/`
alias ls='ls --color=auto'
bash

EOF

### dein.vim setting
mkdir ~/.config
sudo apt install -y python3-dev python3-pip software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo add-apt-repository ppa:jonathonf/vim -y
sudo apt update -y
sudo apt install neovim -y

mkdir ~/docs && cd ~/docs
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

sudo pip3 install -U pip
sudo pip3 install msgpack
sudo pip3 install pynvim

cp -r ~/MyVim/myvim ~/.config/nvim
mv ~/.config/nvim/install.vim ~/.config/nvim/init.vim

# nvim -> :call dein#install()(update())
