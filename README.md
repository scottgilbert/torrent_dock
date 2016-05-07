# torrent_dock

Run transmission-daemon in a Docker container

On a new host, one should be able to run this container following these steps:
 1. Install docker and git, and ensure docker daemon is running
 1. "git clone" this repo
 1. cd torrent_dock
 1. ./build_it.sh
 1. cp torrent_dock.service /etc/systemd/system/
 1. systemctl daemon-reload
 1. systemctl start torrent_dock
 1. systemctl enable torrent_dock (assuming we want it to auto-start at boot time)

Updating the container should just be a matter of re-running built_it.sh, and then restarting the container (systemctl restart torrent_dock).  One should also clean up the old images (docker images; docker rmi [old images])

To add a new torrent, just "wget" the torrent file into the "torrents" directory.  If replacing an older one, just delete the old one via the web interface and delete the torrent file, then "git add" the two torrent files, commit and push.

Note: Due to sloppiness and laziness, there are multiple assumptions that this content is in the /root/torrent_dock directory.
