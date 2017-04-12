# Changelog

## 2.2
- Disable `apt-get update` and `apt-get upgrade` ([\#8](https://github.com/marcoraddatz/homebridge-docker/issues/8))
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
