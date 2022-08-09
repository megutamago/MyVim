# MyVim

ubuntu 20.04

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

chmod 755 p3.sh && \
./p3.sh

chmod 755 p4.sh && \
./p4.sh
```

```
nvim -> :q
nvim -> :call dein#install()(update())
```
