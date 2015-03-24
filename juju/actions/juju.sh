#!/bin/bash
set -e

HOME=/home/ubuntu

git clone https://github.com/juju/plugins.git ${HOME}/.juju-plugins
RC=${HOME}/.bashrc
echo "export JUJU_HOME=${HOME}/.juju" >> $RC
echo "export JUJU_REPOSITORY=${HOME}" >> $RC

mkdir -p ~/.go
export GOPATH=$HOME/.go
export GOROOT=/usr/lib/go

apt-get -qy install juju-core juju-quickstart juju-deployer

# Fetch latest code
go get launchpad.net/godeps/...
go get -v github.com/juju/juju/...

# Build!
cd $HOME/.go/src/github.com/juju/juju
JUJU_MAKE_GODEPS=true make godeps
make build
# $GOPATH/bin/juju version

echo "export PATH=${HOME}/.go/bin:$PATH:${HOME}/.juju-plugins" >> $RC
