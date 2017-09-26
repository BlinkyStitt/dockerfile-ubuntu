#
# An Ubuntu container with helper scripts for installing packages
#
# note: this is pretty much identical to bwstitt/library-debian
#

FROM ubuntu:17.04

RUN groupadd -g 911 abc \
 && useradd -m -s /bin/bash -g 911 -u 911 abc

COPY docker-apt-install.sh /usr/local/sbin/docker-apt-install

RUN docker-apt-install \
	apt-utils \
	dirmngr
