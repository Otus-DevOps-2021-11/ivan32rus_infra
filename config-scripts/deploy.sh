#!/bin/bash
sudo apt update
sudo apt install -y git
cd /home/yc-user
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
sudo bundle update --bundler
puma -d
