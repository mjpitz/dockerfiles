FROM ubuntu:18.04

ARG VERSION=1.4.4

COPY download-consul.sh download-consul.sh
RUN bash download-consul.sh

ENTRYPOINT [ "./consul" ]
