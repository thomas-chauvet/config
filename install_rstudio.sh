#!/bin/sh

sudo apt-get update

# Install R
echo "Install R"
sudo apt-get install r-base
sudo apt-get install r-base-dev
echo "R installed"

# Install RStudio
echo "Install RStudio"
sudo apt-get install gdebi-core
wget https://download1.rstudio.org/rstudio-0.99.896-amd64.deb
sudo gdebi -n rstudio-0.99.896-amd64.deb
rm rstudio-0.99.896-amd64.deb
echo "rstudio installed"