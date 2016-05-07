#
# Run transmission bitorrent client to serve liux distros
#
FROM ubuntu:latest
MAINTAINER Scott Gilbert "scott.gilbert@bum.org"

RUN mkdir -p /var/lib/transmission-daemon/.config/transmission-daemon/torrents
RUN apt-get update && apt-get upgrade && apt-get install -y transmission-daemon
COPY settings.json /etc/transmission-daemon/settings.json
RUN chown -R debian-transmission:debian-transmission /var/lib/transmission-daemon

# These are the ports which transmission is configured to use in the settings.json file
EXPOSE 9091 64314

USER debian-transmission

CMD /usr/bin/transmission-daemon -f --log-error

