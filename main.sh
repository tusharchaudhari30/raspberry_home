#!/bin/bash
sudo apt -y update
sudo apt -y upgrade
wget -O - https://raw.githubusercontent.com/OpenMediaVault-Plugin-Developers/installScript/master/install | sudo bash
sudo apt -y install extrepo
sudo extrepo enable jellyfin
sudo apt update
sudo apt install jellyfin
