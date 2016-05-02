#
# Run transmission bitorrent client to serve liux distros
#
FROM ubuntu:latest
MAINTAINER Scott Gilbert "scott.gilbert@bum.org"

RUN mkdir -p /var/lib/transmission-daemon/info/torrents
ADD /torrents  /var/lib/transmission-daemon/info/torrents
RUN apt-get update && apt-get install -y transmission-daemon
RUN systemctl stop transmission-daemon
COPY settings.json /etc/transmission-daemon/settings.json

# This is the port which transmission is configured to listen on in the settings.json file
EXPOSE 64314

CMD /usr/bin/transmission-daemon -f --log-error

