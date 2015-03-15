#!/bin/bash
set -e

green=`tput setaf 2`
reset=`tput sgr0`

# apt-get install -y dnsmasq bridge-utils >/dev/null
#
# echo "${green}Disabling AppArmor${reset}"
# invoke-rc.d apparmor stop
# update-rc.d -f apparmor remove
#
# echo "${green}Creating a bridge${reset}"
# cat > /etc/network/interfaces.d/lxcbr0.cfg << XXX
# auto lxcbr0
# iface lxcbr0 inet static
# pre-up brctl addbr br0
# address 10.0.4.1
# netmask 255.255.0.0
# XXX

# echo "${green}Bringing the bridge up${reset}"
# brctl addbr br0
# ifconfig lxcbr0 up

# brctl addbr lxcbr0
# ifconfig lxcbr0 10.0.4.1 up

export HOME=/home/ubuntu
cd $HOME
chown -R ubuntu:ubuntu ${HOME}
# chown -R ubuntu:ubuntu $HOME/.juju

sudo -u ubuntu ssh-agent /bin/bash
