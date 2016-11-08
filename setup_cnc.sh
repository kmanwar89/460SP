#! /bin/bash

# Script to set up environment, download required
# programs and set up VM as CNC server in a botnet.

# Author: Kadar M. Anwar
# Date: 11-7-2016

echo "Updating the environment"
echo ""
echo ""
sleep 1
apt-get update && apt-get upgrade -y
sleep 1
echo "Cleaning up..."
echo ""
echo ""
sleep 1
apt-get autoclean && apt-get autoremove -y

# Install baseline packages needed for the environment

echo "Installing Wireshark...."
echo ""
echo ""
sleep 1
apt-get install wireshark

echo "Installing gcc, git and make"
echo ""
echo ""
sleep 1
apt-get install gcc git make

echo "Installing Netkitty"
echo ""
echo ""
sleep 1
cd ~
wget http://download.savannah.gnu.org/releases/netkitty/nk-1.9.tar.gz
tar -xzvf nk-1.9.tar.gz
cd nk-1.9
make
sudo make install

echo ""
echo ""
echo "To open a listening TCP connection on Port 9999, issue 'nk -s -d T,9999'
after this script finishes"
sleep 5
echo ""
echo ""
echo "Enjoy!"
