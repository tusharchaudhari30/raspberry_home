#!/bin/bash
sudo apt -y update
sudo apt -y upgrade
wget -O - https://raw.githubusercontent.com/OpenMediaVault-Plugin-Developers/installScript/master/install | sudo bash

