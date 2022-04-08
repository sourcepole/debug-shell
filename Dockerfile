FROM debian/stable
MAINTAINER "Tomáš Pospíšek" <tpo_deb@sourcepole.ch>

RUN echo "force update 2022-04-04.1" && apt-get update && \
    apt-get upgrade -y

# net-tools -> netstat
# procps    -> ps
RUN apt-get install -y git postgresql-client-13 net-tools procps

ENTRYPOINT ["/bin/bash", "-l", "-c"]

