# MyVim

ubuntu 20.04 (WSL)

```
sudo su
passwd root

echo "user ALL=(ALL:ALL) ALL" >> /etc/sudoers && \
echo "user ALL=NOPASSWD: ALL" >> /etc/sudoers && \
echo "root ALL=(ALL:ALL) ALL" >> /etc/sudoers && \
echo "root ALL=NOPASSWD: ALL" >> /etc/sudoers

apt update -y && apt upgrade -y
login user
```

```
cd ~ && \
git clone https://github.com/megutamago/MyVim.git && \
cd MyVim && \
chmod 755 p.sh && \
./p.sh
```

```
nvim -> :call dein#install()(update())
```

```
chmod 755 p2.sh && \
./p2.sh
```
### ※ここでターミナルを再起動

```
cd MyVim && \
chmod 755 p3.sh && \
./p3.sh

rm .bashrc .bash_logout && \
rm -rf Myvim
```

```
nvim -> :q
nvim -> :call dein#install()(update())
```
