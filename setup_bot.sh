#! /bin/bash

# Script to set up environment, download required
# programs and set up VM as a bot in a botnet.

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

echo "Downloading bot files"
echo ""
echo ""
cd ~
git clone https://github.com/picoflamingo/hacking_codes.git
cd hacking_codes/lh_botnet
cp bot.c ~
echo ""
echo ""
echo "After this script runs, edit the 'bot.c' file with the IP address of
the CNC machine and run 'make bot', followed by 'sudo cp bot /usr/bin'
to complete setup."
sleep 5
echo "Connect to the CNC server by issuing 'bot <botname>'"
sleep 5
echo "Enjoy!"
