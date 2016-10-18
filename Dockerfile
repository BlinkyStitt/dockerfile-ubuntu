#
# An Ubuntu Xenial Xerus container with helper scripts for installing packages
#
# todo: this is pretty much identical to bwstitt/library-debian
#

{{ $version := "16.04" }}

FROM ubuntu:{{ $version }}

ADD ./scripts/docker-apt-install.sh /usr/local/sbin/docker-apt-install

RUN chmod 500 \
    /usr/local/sbin/docker-apt-install

RUN docker-apt-install \
    apt-utils

CMD ["/bin/bash", "-l"]

# Rockerfiles have this, but don't work with Docker Hub
# ATTACH ["/bin/bash", "-l"]
# PUSH bwstitt/library-ubuntu:{{ $version }}
