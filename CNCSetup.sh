#! /bin/bash

# Get IP address of host machine
IP=$(ip route get 8.8.8.8 | awk '{print $NF; exit}')

# Update the OS
echo "Updating package repositories..."
sleep 1
echo ""
echo ""
apt-get update
echo ""

# Install prerequisite packages
echo "Installing prerequisite packages..."
sleep 1
echo ""
echo ""
apt-get install python2.7 python-pip sqlite3 git -y
echo ""

# Install Python CherryPy Framework
echo "Installing CherryPy framework..."
sleep 1
echo ""
echo ""
pip install --upgrade pip
pip install cherrypy
echo ""

# Get the code repository and unzip it
echo "Downloading and setting up C&C software..."
sleep 1
echo ""
echo ""
cd ~
wget https://github.com/sweetsoftware/Ares/archive/master.zip
unzip master.zip
cd Ares-master/server/conf
echo ""

# Modify the server.conf file to allow the server to operate on any IP
sed -i "s/127.0.0.1/0.0.0.0/g" server.conf

# Create & initialize the database
echo "Initializing database..."
sleep 1
echo ""
echo ""
cd .. && python2.7 db_init.py
echo "Database created!"
echo ""

# Cleaning up
echo "Cleaning up"
sleep 1
cd ~
rm master.zip
echo ""
echo ""

# Start the server
echo "C&C server started at $IP:8080!"
sleep 1
cd ~/Ares-master/server/ &&  python2.7 server.py
