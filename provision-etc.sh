
#--- etc -----------------------------------------------

# zsh + prezto
sudo apt install -y zsh
echo $SHELL
chsh -s $(which zsh)
#再ログイン or zsh?
#rm .bashrc .bash_history .bash_profile
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

#Powerlevel10k
prompt -s powerlevel10k
# 対話式コマンド

#peco
apt install -y peco

#.cache/shell
mkdir .cache/shell

# tmux
#下の2個 copy？
# .tmux,conf
# .tmux/new-session

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# prefix + I
# prefix + U
# (prefix + alt + u)

cat >> ~/.bashrc <<EOF
#
alias kill='tmux kill-session'
if [[ ! "$TERM" =~ "screen" ]]; then
  tmux -2 attach || tmux -2 new-session \; source-file ~/.tmux/new-session
fi
#
EOF
