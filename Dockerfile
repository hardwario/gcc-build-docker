FROM ubuntu:18.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y build-essential make cmake libzmq3-dev libssl-dev python3 python3-pip python3-venv sudo zip curl wget git && \
    pip3 install PyYAML Click click-log pyzmq requests jsonschema deepdiff && \
    apt-get autoclean -y && \
    apt-get autoremove -y && \
    apt-get clean

RUN useradd -ms /bin/bash -d /builds builder && \
    echo 'builder ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

USER builder 
WORKDIR /builds
