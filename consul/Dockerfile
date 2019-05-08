FROM ubuntu:18.04

ARG VERSION=1.4.4
ARG OS=linux
ARG ARCH=arm64

RUN apt-get update && apt-get install -y curl unzip

RUN curl -o consul.zip https://releases.hashicorp.com/consul/${VERSION}/consul_${VERSION}_${OS}_${ARCH}.zip && \
    unzip consul.zip

ENTRYPOINT [ "./consul" ]
