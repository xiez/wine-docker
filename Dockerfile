FROM ubuntu:18.04
MAINTAINER zheng.xie@cyai.com

ENV WINEDEBUG -all

RUN apt-get update \
  && apt-get install -y --install-recommends \
     wine64 \
  && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash cyuser
USER cyuser
WORKDIR /home/cyuser

COPY .wine /root/.wine

