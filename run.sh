#!/bin/bash

sed -i "s/rlimit-nproc=3/#rlimit-nproc=3/" /etc/avahi/avahi-daemon.conf

dbus-daemon --system
avahi-daemon -D


file="/root/.homebridge/plugins.json"
if [ -f "$file" ]
then
	echo "$file found."
	node /root/installPlugins.js
else
	echo "$file not found."
fi

homebridge
