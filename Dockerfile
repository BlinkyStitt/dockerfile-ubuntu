#
# An Ubuntu Xenial Xerus container with helper scripts for installing packages
#
# todo: this is pretty much identical to bwstitt/library-debian
#

FROM ubuntu:16.04

RUN groupadd -g 911 abc \
 && useradd -m -s /bin/bash -g 911 -u 911 abc

ADD ./src/docker-apt-install.sh /usr/local/sbin/docker-apt-install
RUN chmod 500 /usr/local/sbin/docker-apt-install

RUN docker-apt-install apt-utils
