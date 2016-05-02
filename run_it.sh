#/bin/bash
# uses a container image tagged "torrent_doc" as might be created with:
# docker build -t torrent_dock

docker run -d \
           -p 127.0.0.1:9091:9091 \
           -p 0.0.0.0:64314:64314 \
           -v ~/torrent_dock/data:/var/lib/transmission-daemon/downloads \
           torrent_dock
