#!/bin/bash
apt-get update
apt-get install

npm install -g homebridge-harmonyhub
npm install -g homebridge-nukiio
npm install -g homebridge-netatmo

npm uninstall -g homebridge-lifx
npm uninstall -g homebridge-nest
npm uninstall -g homebridge-sonos

# From docker file
sed -i "s/rlimit-nproc=3/#rlimit-nproc=3/" /etc/avahi/avahi-daemon.conf
rm -f /var/run/dbus/pid /var/run/avahi-daemon/pid

dbus-daemon --system
avahi-daemon -D

homebridge