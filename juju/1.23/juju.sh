#!/bin/bash
set -e

HOME=/home/ubuntu

git clone https://github.com/juju/plugins.git ${HOME}/.juju-plugins
RC=${HOME}/.bashrc
echo "export JUJU_HOME=${HOME}/.juju" >> $RC
echo "export JUJU_REPOSITORY=${HOME}" >> $RC

mkdir -p $HOME/.go
export GOPATH=$HOME/.go
export GOROOT=/usr/lib/go

apt-get -qy install juju-core juju-quickstart juju-deployer

# Fetch latest code
go get launchpad.net/godeps/...
mkdir -p $HOME/.go/src/github.com/juju/
git clone https://github.com/juju/juju $HOME/.go/src/github.com/juju/juju
cd $HOME/.go/src/github.com/juju/juju
git checkout 1.23
# go build

# Build!
# cd $HOME/.go/src/github.com/juju/juju
JUJU_MAKE_GODEPS=true make godeps
make build

echo "export PATH=${HOME}/.go/bin:$PATH:${HOME}/.juju-plugins" >> $RC
