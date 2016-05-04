#/bin/bash -
# uses a container image tagged "torrent_doc" as might be created with:
# docker build -t torrent_dock

#ensure data dir is writable by container
chmod 777 /root/torrent_dock/data

/usr/bin/docker run  \
           -p 127.0.0.1:9091:9091 \
           -p 0.0.0.0:64314:64314 \
           -v /root/torrent_dock/data:/var/lib/transmission-daemon/downloads \
           -v /root/torrent_dock/torrents:/var/lib/transmission-daemon/.config/transmission-daemon/torrents:ro \
           --rm=true \
           --name="torrent_dock" \
           torrent_dock

