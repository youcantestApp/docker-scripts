#!/bin/bash
docker rm -f yctnode
docker rmi -f guilhermemmb/yctnode
docker build --no-cache -t guilhermemmb/yctnode .
docker run -d -i --name yctnode --link rabbit:rabbit --link mongodb:mongodb -t guilhermemmb/yctnode
