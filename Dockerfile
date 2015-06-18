# DOCKER-VERSION 1.6.2
# VERSION        0.2

FROM debian:wheezy
MAINTAINER James Badger <james@jamesbadger.ca>

ENV DEBIAN_FRONTEND noninteractive

ADD https://packages.treasuredata.com/GPG-KEY-td-agent /tmp/keys/
RUN apt-key add /tmp/keys/GPG-KEY-td-agent && \
    echo "deb http://packages.treasuredata.com/2/debian/wheezy/ wheezy contrib" \
    > /etc/apt/sources.list.d/treasure-data.list && \
    apt-get update && \
    apt-get install -y --force-yes adduser td-agent=2.2.0-0 && \
    rm -rf /var/lib/apt/lists/*

ENV LD_PRELOAD /opt/td-agent/embedded/lib/libjemalloc.so
RUN ulimit -n 65536

EXPOSE 24224 8888

ENTRYPOINT ["/usr/sbin/td-agent"]
CMD ["-v"]
