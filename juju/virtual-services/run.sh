#!/bin/bash
set -e

export HOME=/home/ubuntu
chown -R ubuntu:ubuntu ${HOME}
cd $HOME


# echo "Welcome to Ubuntu with Juju 1.23-beta!"

# If this is the first time using the image, run quickstart to bootstrap juju
if [ ! -f /home/ubuntu/.juju/environments.yaml ]; then
    /bin/bash -c "sudo -u ubuntu juju-quickstart; echo '    agent-metadata-url: https://streams.canonical.com/juju/tools' >> $HOME/.juju/environments.yaml; echo '    agent-stream: devel' >> $HOME/.juju/environments.yaml; sudo -u ubuntu ssh-agent /bin/bash"
else
    sudo -u ubuntu ssh-agent /bin/bash
fi
