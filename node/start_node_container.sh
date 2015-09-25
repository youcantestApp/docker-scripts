#!/bin/bash
docker rm -f yctnode
docker rmi -f guilhermemmb/yctnode
docker build --no-cache -t guilhermemmb/yctnode .
docker run -d -i --name yctnode --add-host rabbit:52.26.16.39 --add-host mongodb:52.26.16.39 -t guilhermemmb/yctnode
