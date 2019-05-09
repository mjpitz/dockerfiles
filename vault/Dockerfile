FROM ubuntu:18.04

ARG VERSION=1.1.1

COPY download-vault.sh download-vault.sh
RUN bash download-vault.sh

ENTRYPOINT [ "./vault" ]
