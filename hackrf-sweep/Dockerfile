FROM debian:stable-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    hackrf libhackrf0 ca-certificates bash \
  && rm -rf /var/lib/apt/lists/*

VOLUME ["/var/log/hackrf"]
