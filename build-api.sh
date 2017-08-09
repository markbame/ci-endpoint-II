#!/bin/bash
truncate -s 0 buildlog-api.txt
exec &> buildlog-api.txt


cd ../app &&
pm2 deploy ecosystem.config.js production_node_api setup &&
cd ~/ci-endpoint-II && sh start-api.sh
cp ~/app/.env ~/app/node_api/source/.env
