FROM ubuntu:latest
MAINTAINER Deepak Bhardwaj

ENV _3PROXY_VERSION 0.8.12
ENV _3PROXY_DOWNLOAD_URL https://github.com/z3APA3A/3proxy/archive/0.8.12.tar.gz
ENV _3PROXY_DOWNLOAD_SHA1 c669a9af27cf1c4178f73216ee74777d200e03fb

RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install -y -q \
  net-tools \
  iproute2 \
  inetutils-ping \
  iptables \
  3proxy \
  curl \
  python \
  python-yaml \
  python3 \
  python3-pip

ADD start.sh start.sh
RUN chmod +x start.sh
ADD stop.sh stop.sh
RUN chmod +x stop.sh
ADD 3proxy.cfg /etc/3proxy/3proxy.cfg

ADD log_intf_statistics.py log_intf_statistics.py

WORKDIR /

RUN mkdir /tngbench_share
EXPOSE 3128
EXPOSE 1080

# normal entry point
CMD /bin/bash
