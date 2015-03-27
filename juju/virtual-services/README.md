# Juju Virtual Services

This is an alpha version of *virtual services* in Juju, which will allow you to relate servers running in juju to those running outside of juju.

## Building

    make build

## Running

By default, the first time the image is run it will run juju-quickstart, to guide you through setting up your environment.

    docker run -ti -v $HOME/.juju-virtual-services:/home/ubuntu/.juju adamisrael/juju-virtual-services

If you want to use the juju environment from your host machine:

    docker run -ti -v $HOME/.juju:/home/ubuntu/.juju adamisrael/juju-virtual-services

### Caveats

The local provider is not currently functional. If prompted by quickstart, choose any other provider.

## TODO
- Add test, upload to Makefile
- Build as a nightly, until final is released
- Local provider
