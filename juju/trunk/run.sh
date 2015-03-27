#!/bin/bash
set -e

export HOME=/home/ubuntu
chown -R ubuntu:ubuntu ${HOME}
cd $HOME


# echo "Welcome to Ubuntu with Juju 1.23-beta!"

# If this is the first time using the image, run quickstart to bootstrap juju
if [ ! -f /home/ubuntu/.juju/environments.yaml ]; then
    /bin/bash -c "sudo -u ubuntu juju-quickstart; sudo -u ubuntu ssh-agent /bin/bash"
else
    sudo -u ubuntu ssh-agent /bin/bash
fi
