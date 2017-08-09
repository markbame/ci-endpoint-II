#!/bin/bash
container=`cat workspace-container.txt`
docker exec -i $container bash -c "cd /var/www/app/admin-app/source/server && pm2 delete admin && pm2 start -f index.js --name admin"
