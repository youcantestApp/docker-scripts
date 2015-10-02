#!/bin/bash
docker rm -f test-scheduler
docker build --no-cache -t guilhermemmb/test-scheduler .
docker run -d -i  --name test-scheduler --link rabbit:rabbit --link mongodb:mongodb -t guilhermemmb/test-scheduler
