#/bin/bash -eux

### color config
cat >> ~/.bashrc <<EOF
#
###Add
eval `dircolors ~/.colorrc`
alias ls='ls --color=auto'
bash
#
EOF

### dein.vim setting
mkdir ~/.config
apt install -y python3-dev python3-pip software-properties-common
add-apt-repository ppa:neovim-ppa/unstable -y
add-apt-repository ppa:jonathonf/vim -y
apt update -y
apt install neovim -y

mkdir ~/docs && cd ~/docs
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

pip3 install -U pip
pip3 install msgpack
pip3 install pynvim

cp -r ~/MyVim/myvim ~/.config/nvim
mv ~/.config/nvim/install.vim ~/.config/nvim/init.vim

# nvim -> :call dein#install()(update())
