#
# An Ubuntu Xenial Xerus container with helper scripts for installing packages
#
# todo: this is pretty much identical to bwstitt/library-debian
#

FROM ubuntu:16.04

RUN set -eux; \
    groupadd -g 911 abc; \
    useradd -m -s /bin/bash -g 911 -u 911 abc

ADD docker-apt-install.sh /usr/local/sbin/docker-install

RUN docker-install apt-utils
