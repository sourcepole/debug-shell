FROM debian:stable
MAINTAINER "Tomáš Pospíšek" <tpo_deb@sourcepole.ch>

# net-tools -> netstat
# procps    -> ps
RUN echo "force update 2022-04-04.1" && apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git postgresql-client-13 net-tools procps vim && \
    apt-get clean

# for testing in non-root k8s:
# RUN cp /usr/bin/id /usr/bin/id-suid && chmod +s /usr/bin/id-suid
