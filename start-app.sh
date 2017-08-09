#!/bin/bash
container=`cat workspace-container.txt`
docker exec -i $container  bash -c "cd /var/www/app/react-app/source/server && pm2 delete app && pm2 start -f index.js --name app"

