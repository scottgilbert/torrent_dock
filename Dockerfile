#
# Run transmission bitorrent client to serve liux distros
#
FROM ubuntu:latest
MAINTAINER Scott Gilbert "scott.gilbert@bum.org"

RUN mkdir -p /var/lib/transmission-daemon/info/torrents
ADD /torrents  /var/lib/transmission-daemon/info/torrents
RUN apt-get update && apt-get install -y transmission-daemon
COPY settings.json /etc/transmission-daemon/settings.json

# These are the port which transmission is configured to use in the settings.json file
EXPOSE 9091 64314

CMD /usr/bin/transmission-daemon -f --log-error

