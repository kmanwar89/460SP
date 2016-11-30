# 460 SP

Project files for 460 SP

## Update 11/29/2016
* Added files for Ares Python Botnet

## Setting up the server
* chmod +x and use sudo ./setup.sh to run the setup script
* Automatically downloads all necessary packages, modifies file with IP address
of the C&C server and starts the C&C @ port 8080

## Setting up the bots
* setup.sh handles setting the IP address of the C&C server for the bot
* Simply execute python agent.py within the Ares/agent/python/ directory
