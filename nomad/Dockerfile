FROM ubuntu:18.04

ARG VERSION=0.9.1
ARG OS=linux
ARG ARCH=arm64

RUN apt-get update && apt-get install -y curl unzip

RUN curl -o nomad.zip https://releases.hashicorp.com/nomad/${VERSION}/nomad_${VERSION}_${OS}_${ARCH}.zip && \
    unzip nomad.zip

ENTRYPOINT [ "./nomad" ]
