#!/bin/bash
docker rm -f yctjob
docker build --no-cache -t guilhermemmb/yctjob .
docker run -d -i --name yctjob -t guilhermemmb/yctjob
