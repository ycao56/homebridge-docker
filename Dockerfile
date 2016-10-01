FROM nodesource/jessie:5.8.0
MAINTAINER Marco Raddatz <info@marcoraddatz.com>

##################################################
# Set environment variables                      #
##################################################

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

##################################################
# Install tools                                  #
##################################################

RUN apt-get update
RUN apt-get install -y apt-utils apt-transport-https locales
RUN apt-get install -y curl wget git python build-essential make g++ libkrb5-dev vim net-tools nano
RUN apt-get install -y avahi-daemon avahi-discover libnss-mdns libavahi-compat-libdnssd-dev

COPY avahi-daemon.conf /etc/avahi/avahi-daemon.conf
RUN alias ll='ls -alG'

##################################################
# Install Homebridge                             #
##################################################

RUN npm install -g homebridge --unsafe-perm

##################################################
# Start                                          #
##################################################

USER root
RUN mkdir -p /var/run/dbus

ADD image/run.sh /root/run.sh

EXPOSE 51826
CMD ["/root/run.sh"]