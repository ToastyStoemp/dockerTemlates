FROM ubuntu:latest

RUN apt-get update
RUN apt-get install --no-install-recommends -y \
      ca-certificates git npm libcairo2-dev libjpeg8-dev libpango1.0-dev libgif-dev build-essential g++
RUN mkdir -p /data/modBot
#RUN git clone https://github.com/ToastyStoemp/modBot
ADD modBot/* /data/modBot/
RUN cd /data/modBot \
 && npm install
RUN apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD entrypoint.sh /

WORKDIR /
ENTRYPOINT "entrypoint.sh"
