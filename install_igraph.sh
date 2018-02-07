#!/bin/sh

sudo apt-get update

# Install Igraph
echo "Install ubuntu packages for igraph"
sudo apt install libcurl4-openssl-dev
sudo apt install libssl-dev
sudo apt-get install libcairo2 libcairo2-dev libffi-dev
echo "Libs installed"
