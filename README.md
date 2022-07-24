# MyVim

ubuntu 20.04

```
git clone https://github.com/megutamago/MyVim.git
chmod 755 Myvim/provision.sh
./Myvim/provision.sh
```

```
passwd root

echo "user ALL=(ALL:ALL) ALL" >> /etc/sudoers && \
echo "user ALL=NOPASSWD: ALL" >> /etc/sudoers && \
echo "root ALL=(ALL:ALL) ALL" >> /etc/sudoers && \
echo "root ALL=NOPASSWD: ALL" >> /etc/sudoers
```
