#!/bin/sh

sudo apt-get update

# Install Pycharm
echo "Install Pycharm"
sudo add-apt-repository ppa:mystic-mirage/pycharm
sudo apt-get install pycharm-community
echo 'export PATH="pycharm-community-2017.2.1/bin:$PATH"' >> ~/.bashrc
echo "alias pycharm=pycharm.sh" > ~/.bash_aliases
echo "Pycharm installed"
