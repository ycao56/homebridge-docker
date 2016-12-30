#!/bin/bash

sed -i "s/rlimit-nproc=3/#rlimit-nproc=3/" /etc/avahi/avahi-daemon.conf

cd /root/.homebridge

env_file="/root/.homebridge/.env"
install_file="/root/.homebridge/install.sh"
package_file="/root/.homebridge/package.json"
plugin_folder="/root/.homebridge/plugins"

echo "Logged in as:"
whoami

# Include environment variables
if [ -f "$env_file" ]
then
    echo "Including environment variables from $env_file."

    source $env_file

    echo "Environment is set to $HOMEBRIDGE_ENV."
else
    echo "$env_file not found."
    echo "Default env variables will be used."
fi

# Update Homebridge
echo "Updating Homebridge."
npm update -g homebridge

# Install plugins via package.json
if [ -f "$package_file" ]
then
    echo "Installing plugins from $package_file."

    npm install
else
    echo "$package_file not found."
fi

# Install plugins via install.sh
if [ -f "$install_file" ]
then
    echo "Installing plugins from $install_file."

    /bin/bash $install_file
else
    echo "$install_file not found."
fi

rm -f /var/run/dbus/pid /var/run/avahi-daemon/pid

dbus-daemon --system
avahi-daemon -D

# Start Homebridge
if [ -n "$HOMEBRIDGE_ENV" ]
then
    case "$HOMEBRIDGE_ENV" in
        "debug" )
            DEBUG=* homebridge -D -P $plugin_folder ;;
        "development" )
            homebridge -P $plugin_folder ;;
        "production" )
            homebridge ;;
    esac
else
    homebridge
fi