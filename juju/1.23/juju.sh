#!/bin/bash
set -e

HOME=/home/ubuntu

git clone https://github.com/juju/plugins.git ${HOME}/.juju-plugins
RC=${HOME}/.bashrc
echo "export JUJU_HOME=${HOME}/.juju" >> $RC
echo "export JUJU_REPOSITORY=${HOME}" >> $RC

echo -e "deb http://ppa.launchpad.net/juju/devel/ubuntu trusty main\n \
deb-src http://ppa.launchpad.net/juju/devel/ubuntu trusty main" >> /etc/apt/sources.list.d/juju-devel.list

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 376A290EC8068B11

apt-get update
apt-get -qy install juju-core juju-quickstart juju-deployer

echo "export PATH=$PATH:${HOME}/.juju-plugins" >> $RC
