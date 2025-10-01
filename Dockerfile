# syntax=docker/dockerfile:1
FROM ubuntu:24.04
RUN apt-get -y update && apt-get install -y --no-install-recommends wget \
    && wget --no-check-certificate https://github.com/brentp/mosdepth/releases/download/v0.3.11/mosdepth \
    && mv mosdepth /usr/local/bin/mosdepth \
    && chmod +x /usr/local/bin/mosdepth
WORKDIR /
ENTRYPOINT ["/usr/local/bin/mosdepth"]