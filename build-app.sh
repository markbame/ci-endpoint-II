#!/bin/bash
> buildlog-app.txt
exec &> buildlog-app.txt

cd ../app &&
pm2 deploy ecosystem.config.js production_react_app setup
cd ~/ci-endpoint-II && sh start-app.sh
