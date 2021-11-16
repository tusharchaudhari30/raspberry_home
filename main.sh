#!/bin/bash
sudo apt -y update
sudo apt -y upgrade
wget -O - https://raw.githubusercontent.com/OpenMediaVault-Plugin-Developers/installScript/master/install | sudo bash
sudo apt -y install apt-transport-https gnupg lsb-release
wget -O - https://repo.jellyfin.org/debian/jellyfin_team.gpg.key | sudo apt-key add -
echo "deb [arch=$( dpkg --print-architecture )] https://repo.jellyfin.org/ubuntu $( lsb_release -c -s ) main" | sudo tee /etc/apt/sources.list.d/jellyfin.list
sudo apt update
sudo apt -y install jellyfin
sudo apt -y install deluged deluge-web python-mako
mkdir /media/NASHDD/torrent-downloads
echo "root:root:10" >> ~/.config/deluge/auth
curl -sSL https://install.pi-hole.net | bash
