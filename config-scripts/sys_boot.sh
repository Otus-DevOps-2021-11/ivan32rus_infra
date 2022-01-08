#!/bin/bash
sudo apt update
sudo apt install -y ruby-full ruby-bundler build-essential
curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt update
sudo apt install -y mongodb-org
sudo systemctl start mongod.service
sudo systemctl enable mongod
sudo apt install -y git
cd /home/yc-user
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
sudo bundle update --bundler
puma -d
