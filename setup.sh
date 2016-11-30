#! /bin/bash

IP=$(ip route get 8.8.8.8 | awk '{print $NF; exit}')

apt-get update
apt-get install git python2.7 python-pip sqlite3 -y

pip install --upgrade pip
pip install cherrypy

cd ~ && git clone https://github.com/kmanwar89/460SP.git
cd ~/460SP/Ares/server/conf/
sed -i "s/127.0.0.1/$IP/g" server.conf
cd ~/460SP/Ares/server/ && python db_init.py
cd ~/460SP/Ares/agent/python/ && sed -i "s/localhost/$IP/g" settings.py
chown -R checkout:checkout ~/460SP/
cd ~/460SP/Ares/server/ && python server.py
