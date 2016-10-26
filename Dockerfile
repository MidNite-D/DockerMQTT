# MQTT docker image.
#
# VERSION 1.0

FROM debian:jessie

MAINTAINER Andy Taylor <https://github.com/Manaconda>

ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN apt-get update && apt-get install -y mosquitto mosquitto-clients && apt-get clean

# Expose MQTT port
EXPOSE 1883

ENTRYPOINT ["/usr/sbin/mosquitto"]

