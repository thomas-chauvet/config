#!/bin/sh

sudo apt-get update

# Install sublime text
echo "Install Sublime Text"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get install sublime-text
echo "alias sublime=subl" >> .bash_aliases
echo "Sublime text installed"