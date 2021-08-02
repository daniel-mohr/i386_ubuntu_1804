# https://hub.docker.com/r/i386/ubuntu
FROM i386/ubuntu:18.04
ARG TARGETPLATFORM=linux/i386
COPY entrypoint.sh /entrypoint.sh
RUN apt-get update
ENTRYPOINT ["/entrypoint.sh"]
