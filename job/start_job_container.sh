#!/bin/bash
docker rm -f yctjob
docker build --no-cache -t guilhermemmb/yctjob .
docker run -d -i  --name yctjob --add-host rabbit:52.26.16.39 --add-host mongodb:52.26.16.39 -t guilhermemmb/yctjob
