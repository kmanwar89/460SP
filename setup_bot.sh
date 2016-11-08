#! /bin/bash

# Script to set up environment, download required
# programs and set up VM as a bot in a botnet.

# Author: Kadar M. Anwar
# Date: 11-7-2016

echo "========================"
echo "Updating the environment"
echo "========================"
echo ""
echo ""
sleep 1

apt-get update && apt-get upgrade -y

echo "========================"
echo 	  "Cleaning up..."
echo "========================"
echo ""
echo ""
sleep 1

apt-get autoclean && apt-get autoremove -y

# Install baseline packages needed for the environment

echo "========================"
echo  "Installing Wireshark..."
echo "========================"
echo ""
echo ""
sleep 1

apt-get install wireshark

echo "========================"
echo "Installing gcc, git and make"
echo "========================"
echo ""
echo ""
sleep 1

apt-get install gcc git make

echo "========================"
echo "Downloading bot files"
echo "========================"
echo ""
echo ""
sleep 1

cd ~
git clone https://github.com/picoflamingo/hacking_codes.git
cd hacking_codes/lh_botnet
cp bot.c ~
rm -rf /home/$USER/hacking_codes/

echo "========================"
echo     "Final information"
echo "========================"
echo "After this script runs, edit the 'bot.c' file with the IP address of
the CNC machine and run 'make bot', followed by 'sudo cp bot /usr/bin'
to complete setup."
sleep 2
echo "Connect to the CNC server by issuing 'bot <botname>'"
sleep 1
echo "Enjoy!"
