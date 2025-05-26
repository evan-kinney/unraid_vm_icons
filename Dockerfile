FROM alpine:latest
MAINTAINER SpaceinvaderOne
ENV GIT_REPO=https://github.com/SpaceinvaderOne/unraid_vm_icons.git
RUN apk add --no-cache git bash beep rsync
COPY . /iconsync
VOLUME /unraid_vm_icons
VOLUME /config
CMD bash ./iconsync/icon_download.sh ; sleep 5
