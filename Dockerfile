FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    wget \
    tar \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY ImageMagick.tar.gz /tmp/

RUN cd /tmp && \
    tar -xzvf ImageMagick.tar.gz && \
    cd ImageMagick-7.* && \
    ./configure && \
    make && \
    make install


