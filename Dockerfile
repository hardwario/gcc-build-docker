FROM ubuntu:20.04

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install -y \
    build-essential make cmake \
    python3 python3-pip python3-venv \
    sudo zip curl wget git \
    ruby ruby-dev rubygems && \
    pip3 install PyYAML requests jsonschema deepdiff && \
    gem install --no-document fpm && \
    apt-get autoclean -y && \
    apt-get clean && \
    useradd -ms /bin/bash -d /builds builder && \
    echo 'builder ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

USER builder 
WORKDIR /builds
