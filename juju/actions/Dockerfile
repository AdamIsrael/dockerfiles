FROM ubuntu:14.04.1
MAINTAINER Adam Israel <adam@adamisrael.com>
RUN apt-get update && apt-get -y --no-install-recommends install \
    bzr \
    ca-certificates \
    git \
    golang-go \
    golang-src \
    mercurial \
    make \
    openssh-client

ENV HOME=/home/ubuntu
ENV GOPATH=/home/ubuntu/go
ENV GOROOT=/usr/lib/go
ENV JUJU_DEV_FEATURE_FLAGS=action

ADD setup.sh /
ADD lxc.sh /

# ADD juju.sh /
ADD run.sh /

RUN /setup.sh

RUN mkdir /home/ubuntu/.juju
RUN mkdir -p /home/ubuntu/go

RUN /lxc.sh

# RUN /juju.sh
CMD /run.sh
