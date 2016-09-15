#!/bin/sh

docker run -d --name HomeBridge --restart=always --net=host -p 51826:51826 -v /volume1/docker/homebridge:/root/.homebridge marcoraddatz/synology-homebridge:latest