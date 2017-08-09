#!/bin/bash
container=`cat workspace-container.txt`
docker exec -i  $container bash -c "cd /var/www/app/node_api/source && pm2 delete api && pm2 start -f index.js --name api"
