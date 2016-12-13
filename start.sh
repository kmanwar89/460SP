#! /bin/bash

cd ~/460SP-master/Ares/agent/python && python2.6 agent.py &
echo $! >/var/run/AresAgent.pid
