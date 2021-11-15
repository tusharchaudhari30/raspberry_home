#!/bin/bash
sudo apt -y update
sudo apt -y upgrade
wget -O - https://raw.githubusercontent.com/OpenMediaVault-Plugin-Developers/installScript/master/install | sudo bash
sudo apt -y install apt-transport-https gnupg lsb-release
wget -O - https://repo.jellyfin.org/debian/jellyfin_team.gpg.key | sudo apt-key add -
echo "deb [arch=amd64] https://repo.jellyfin.org/debian ubuntu main" | sudo tee /etc/apt/sources.list.d/jellyfin.list
sudo apt update
sudo apt install jellyfin
