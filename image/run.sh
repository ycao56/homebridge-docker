#!/bin/bash

sed -i "s/rlimit-nproc=3/#rlimit-nproc=3/" /etc/avahi/avahi-daemon.conf

cd /root/.homebridge
package_file="/root/.homebridge/package.json"
install_file="install.sh"

# Try to install packages
if [ -f "$package_file" ]
then
	echo "$package_file found. Going to install additional plugins."
	npm run install
else
	echo "$package_file not found. You can create this file to install additional plugins not already included in the docker image."
fi

# Any more stuff to install?
if [ -f "$install_file" ]
then
  sh $install_file
fi

rm -f /var/run/dbus/pid /var/run/avahi-daemon/pid

dbus-daemon --system
avahi-daemon -D

homebridge