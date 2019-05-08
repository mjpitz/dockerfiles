FROM ubuntu:18.04

ARG VERSION=0.9.1

COPY download-nomad.sh download-nomad.sh
RUN bash download-nomad.sh

ENTRYPOINT [ "./nomad" ]
