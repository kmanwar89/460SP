#! /bin/bash

cd ~/Botnet/Ares/agent/python && python2.6 agent.py &
echo $! >/var/run/AresAgent.pid

