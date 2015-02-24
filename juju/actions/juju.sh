#!/bin/bash
set -e

# Fetch latest code
go get launchpad.net/godeps/...
go get -v github.com/juju/juju/...

# Build!
cd ~/go/src/github.com/juju/juju
JUJU_MAKE_GODEPS=true make godeps
make build
$GOPATH/bin/juju version
