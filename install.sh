#!/bin/bash
apt-get install openssh-server byobu vim less git
echo syntax on > /root/.vimrc
rm /etc/udev/rules.d/70-persistent-net.rules
echo usedns no >> /etc/ssh/sshd_config
/etc/init.d/ssh restart
cp inittab /etc/inittab
cp quickshell /bin/quickshell
cp ip_prompt /usr/local/bin/ip_prompt
cp bash.bashrc /etc/bash.bashrc
