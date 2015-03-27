# Juju Virtual Services

This is an alpha version of *virtual services* in Juju, which will allow you to relate servers running in juju to those running outside of juju.

    $ cat mysql.endpoint
    db:mysql={"database":"juju", "user": "root", "password": "root", "private-address": "172.17.42.1"}

    $ cat haproxy.endpoint
    website:http={"private-address":"10.0.3.1", "hostname":"10.0.3.1", "port":"6543"}

    $ juju deploy wordpress
    $ juju deploy virtual:mysql --endpoint=file=mysql.endpoint
    $ juju deploy virtual:haproxy --endpoint-file=haproxy.endpoint
    $ juju add-relation wordpress mysql
    $ juju add-relation wordpress haproxy

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
