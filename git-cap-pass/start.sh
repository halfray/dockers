#!/bin/sh
set -e
service ssh start
touch /root/.ssh/config
echo "StrictHostKeyChecking no" >> /root/.ssh/config
echo "UserKnownHostsFile /dev/null" >> /root/.ssh/config
cd /home/src/app/ &&  bundle exec cap production deploy  
