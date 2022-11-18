#!/bin/sh
runuser -l baggurd -c 'git clone -b monolith https://github.com/express42/reddit.git'
runuser -l baggurd -c 'cd reddit && bundle install'
sudo systemctl enable puma
sudo systemctl start puma