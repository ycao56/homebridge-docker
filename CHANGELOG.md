# Changelog

## [5.1.1] - 2020-09-25
- Use "release it" for releases

## [5.1.0]
- Default Homebridge version is v1.2.3
- Updated Node.js to version 12.18

## 5.0
- Default Homebridge version is v1.0.4
- Updated Node.js to version 12.16.2

## 4.7
- Default Homebridge version is v0.4.53
- Updated Node.js to version 12.16

## 4.6
- Default Homebridge version is v0.4.50
- Updated Node.js to version 10.16

## 4.5
- Default Homebridge version is v0.4.49
- Updated Node.js to version 10.15

## 4.4
- Default Homebridge version is v0.4.45
- Updated Node.js to version 10.11

## 4.3
- Default Homebridge version is v0.4.38
- Updated Node.js to version 9.8
- Moved readme contents to Wiki (https://github.com/marcoraddatz/homebridge-docker/wiki)

## 4.2
- Default Homebridge version is v0.4.33
- Added option to set DiskStation hostname ([\#7](https://github.com/marcoraddatz/homebridge-docker/issues/7))

## 4.1
- Default Homebridge version is v0.4.32
- Updated Node.js to version 9.2
- Added timezone support ([\#32](https://github.com/marcoraddatz/homebridge-docker/issues/32))

## 4.0
- Added FFmpeg as default package ([\#23](https://github.com/marcoraddatz/homebridge-docker/pull/23))
- Added insecure options to enable HTTP requests: `debug-insecure`, `development-insecure`, `production-insecure`  ([\#21](https://github.com/marcoraddatz/homebridge-docker/issues/21), [\#24](https://github.com/marcoraddatz/homebridge-docker/pull/24))
- Updated Avahi default config
- Updated Debian Jessie to Debian Stretch ([\#22](https://github.com/marcoraddatz/homebridge-docker/issues/22), [\#23](https://github.com/marcoraddatz/homebridge-docker/pull/23))
- Updated Node.js to version 8.4
- Disabled Avahi IPv6 ([\#7](https://github.com/marcoraddatz/homebridge-docker/issues/7))

## 3.1
- Default Homebridge version is v0.4.22
- Updated Node.js to version 8.2

## 3.0
- Default Homebridge version is v0.4.20
- Use node as base image
- Updated Node.js to version 7.10

## 2.2
- Default Homebridge version is v0.4.17
- Disable `apt-get upgrade` ([\#8](https://github.com/marcoraddatz/homebridge-docker/issues/8))
- Disable auto-update and bind Homebridge version via env variable ([\#12](https://github.com/marcoraddatz/homebridge-docker/issues/12))

## 2.1.1
- Updated version file
- Removed email from Dockerfile
- Added .dockerignore file

## 2.1
- Default Homebridge version is v0.4.16
- Auto-update Homebridge on startup ([\#2](https://github.com/marcoraddatz/homebridge-docker/issues/2))
- Set environment via variable ([\#3](https://github.com/marcoraddatz/homebridge-docker/issues/3))
- `install.sh` gets executed as root ([\#4](https://github.com/marcoraddatz/homebridge-docker/issues/4))

## 2.0.1
- Default Homebridge version is v0.4.6
- Re-enabled port 5353 for Bonjour communication.

## 2.0
- Stable release after refactoring the old project files.
