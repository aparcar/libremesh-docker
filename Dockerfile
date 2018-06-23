ARG DOCKER_USERNAME
ARG TAG
FROM ${DOCKER_USERNAME}/openwrt:${TAG}

ARG TAG

MAINTAINER Paul Spooren <mail@aparcar.org>

ADD ${TAG}.tar.gz /

RUN mkdir -p /var/lock \
 && mkdir -p /var/run \
 && opkg update \
 && opkg remove dnsmasq \
 && opkg install \
        luci \
        lime-full \
 && rm /var/opkg-lists/* \
 && rm /etc/opkg/initfeeds.conf

EXPOSE 80 443 22

USER root

CMD ["/sbin/init"]
