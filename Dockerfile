#
# An Ubuntu container with helper scripts for installing packages
#
# todo: this is pretty much identical to all the other base images
#
FROM ubuntu:17.10

RUN set -eux; \
    groupadd -g 911 abc; \
    useradd -m -s /bin/bash -g 911 -u 911 abc

ADD docker-apt-install.sh /usr/local/sbin/docker-install

# gnupg2+dirmngr are for 'apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FINGERPRINT'
RUN docker-install \
        apt-utils \
        bash \
        dirmngr \
        gnupg2 \
    ;
