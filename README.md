# torrent_dock

Run transmission-daemon in a Docker container

On a new host, one should be able to run this container following these steps:
 1. Install docker and git, and ensure docker daemon is running
 1. "git clone" this repo
 1. cd torrent_dock
 1. ./build_it.sh
 1. ./run_it.sh

Updating the container should just be a matter of re-running built_it.sh, stopping any existing container, followed by run_it.sh.

(The following does not seem to be working yet.  A work in progress....)
To make container auto-start at boot time:
 1. Copy torrent_dock.service to /etc/systemd/system/
 1. systemctl daemon-reload
 1. systemctl enable torrent_dock

Note: Due to sloppiness and laziness, there are multiple assumptions that this content is in the /root/torrent_dock directory.
