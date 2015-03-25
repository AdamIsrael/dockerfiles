#!/bin/bash
set -e

export HOME=/home/ubuntu
chown -R ubuntu:ubuntu ${HOME}
cd $HOME

sudo -u ubuntu ssh-agent /bin/bash
