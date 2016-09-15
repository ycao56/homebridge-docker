#!/bin/sh

docker run -i -t --entrypoint /bin/bash --name HomeBridge --net=host -p 51826:51826 -v /volume1/docker/homebridge:/root/.homebridge marcoraddatz/synology-homebridge:latest