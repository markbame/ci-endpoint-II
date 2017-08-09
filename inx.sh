#!/bin/bash
container=`cat nginx-container.txt`
docker exec -it $container /bin/bash

