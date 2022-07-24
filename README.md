# MyVim

ubuntu 20.04

```
git clone https://github.com/megutamago/MyVim.git && \
cd MyVim && \
chmod 755 provision.sh && \
./provision.sh
```

```
passwd root

echo "user ALL=(ALL:ALL) ALL" >> /etc/sudoers && \
echo "user ALL=NOPASSWD: ALL" >> /etc/sudoers && \
echo "root ALL=(ALL:ALL) ALL" >> /etc/sudoers && \
echo "root ALL=NOPASSWD: ALL" >> /etc/sudoers
```
