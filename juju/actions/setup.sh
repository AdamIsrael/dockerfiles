#!/bin/bash
set -e

apt-get update

useradd -m ubuntu
echo "ubuntu ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/juju-users
