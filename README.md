# MyVim

ubuntu 20.04 (WSL)


[powershell]
```
wsl -s Ubuntu
Ubuntu config --default-user root
```

```
passwd root

echo "user ALL=(ALL:ALL) ALL" >> /etc/sudoers && \
echo "user ALL=NOPASSWD: ALL" >> /etc/sudoers && \
echo "root ALL=(ALL:ALL) ALL" >> /etc/sudoers && \
echo "root ALL=NOPASSWD: ALL" >> /etc/sudoers

apt update -y && apt upgrade -y
```

```
cd ~ && \
git clone https://github.com/megutamago/MyVim.git && \
cd MyVim && \
chmod 755 p.sh && \
./p.sh
```

```
nvim -> :call dein#install()
     -> :call dein#update()
```

```
chmod 755 p2.sh && \
./p2.sh
```
```
nvim -> :call dein#install()
     -> :call dein#update()
```

### ※ここでターミナルを再起動

```
chmod 755 p3.sh && \
./p3.sh

rm -f .bashrc .bash_logout .bash_history
rm -rf MyVim
```
