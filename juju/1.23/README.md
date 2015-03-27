# Juju 1.23-beta2

This Docker image contains the 1.23-beta2 release of Juju, giving users a way to preview the new features, such as `actions` and `leader election`  before it's available in a stable release.

## Building

    make build

## Running

By default, the first time the image is run it will run juju-quickstart, to guide you through setting up your environment.

    docker run -ti adamisrael/juju-1.23 -v $HOME/.juju-1.23:/home/ubuntu/.juju

If you want to use the juju environment from your host machine:

    docker run -ti adamisrael/juju-1.23 -v $HOME/.juju:/home/ubuntu/.juju

### Caveats

The local provider is not currently functional. If prompted by quickstart, choose any other provider.

## TODO
- Add test, upload to Makefile
- Build as a nightly, until 1.23 final is released
- Local provider
- Optimize the build process
