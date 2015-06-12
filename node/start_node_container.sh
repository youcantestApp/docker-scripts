#!/bin/bash
docker rm -f yctnode1
docker rmi -f guilhermemmb/yctnode1
docker build --no-cache -t guilhermemmb/yctnode1 .
docker run -d -i --name yctnode1 --add-host rabbit:52.26.16.39 --add-host mongodb:52.26.16.39 -t guilhermemmb/yctnode1
