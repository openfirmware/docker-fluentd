# DOCKER-VERSION 1.1.2
# VERSION        0.1

FROM ubuntu:12.04
MAINTAINER James Badger <james@jamesbadger.ca>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y -q curl libcurl3 sudo ruby-dev
RUN curl -L http://toolbelt.treasuredata.com/sh/install-ubuntu-precise.sh | sh

ENV LD_PRELOAD /usr/lib/fluent/jemalloc/lib/libjemalloc.so
RUN ulimit -n 65536

EXPOSE 24224 8888

ENTRYPOINT ["/usr/sbin/td-agent"]
CMD ["-v"]
