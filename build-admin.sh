#!/bin/bash
> buildlog-admin.txt
exec &> buildlog-admin.txt


cd ../app &&
pm2 deploy ecosystem.config.js production_admin_app setup
cd ~/ci-endpoint-II && sh start-admin.sh
