FROM debian:jessie
RUN apt-get update && apt-get install -y \
locales 

RUN dpkg-reconfigure locales && \
    locale-gen fr_FR.UTF-8 && \
    /usr/sbin/update-locale LANG=fr_FR.UTF-8

ENV LC_ALL fr_FR.UTF-8
