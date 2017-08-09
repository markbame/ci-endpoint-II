#!/bin/bash
container=`cat workspace-container.txt`
docker exec -it $container /bin/bash
