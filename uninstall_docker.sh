#!/bin/sh

# https://stackoverflow.com/questions/31313497/how-to-remove-docker-installed-using-wget
sudo apt-get purge -y docker-engine
sudo apt-get autoremove -y --purge docker-engine
sudo apt-get autoclean

sudo apt-get purge -y docker-engine docker docker.io docker-ce
sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce

sudo rm -rf /var/lib/docker
sudo groupdel docker