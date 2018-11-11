#!/usr/bin/env bash

# This script is a modification of
# https://gist.github.com/bryjbrown/8dfb958b10f30506b121

URL="https://repo.anaconda.com/archive/Anaconda3-5.3.0-Linux-x86_64.sh"
CONFIG=".bashrc"
ANACONDA_PATH="/anaconda3"

# Download, run, and clean up installer script
wget -c -O /tmp/anaconda-installer.sh $URL
sudo bash /tmp/anaconda-installer.sh -b -p $ANACONDA_PATH

# Enable Anaconda and add to path from within config file
sudo chmod -R 777 $ANACONDA_PATH
echo >> ~/${CONFIG}
echo "# Anaconda3" >> ~/${CONFIG}
echo "export PATH=$ANACONDA_PATH/bin:$PATH" >> ~/${CONFIG}
source ~/${CONFIG}

echo
echo "Anaconda3 has been successfully installed to $ANACONDA_PATH."
echo "This version will override all other versions of Python on your system."
echo "Your ~/${CONFIG} file has been modified to add Anaconda 3 to your PATH variable."
