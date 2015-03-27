# Juju Actions

This Docker image builds the latest development version of Juju, giving users a way to preview the new features before they're available in a stable release.

## Building

    make build

## Running

By default, the first time the image is run it will run juju-quickstart, to guide you through setting up your environment.

    docker run -ti -v $HOME/.juju-trunk:/home/ubuntu/.juju adamisrael/juju-trunk

If you want to use the juju environment from your host machine:

    docker run -ti -v $HOME/.juju:/home/ubuntu/.juju adamisrael/juju-trunk

### Caveats

The local provider is not currently functional. If prompted by quickstart, choose any other provider.

## TODO
- Add test, upload to Makefile
- Build as a nightly, until 1.23 final is released
- Local provider
