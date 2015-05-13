#!/bin/bash
docker build --no-cache -t guilhermemmb/yctrails .
docker run -d -i --name yctrails -p 3000:3000 --link rabbit:rabbit --link mongodb:mongodb -t guilhermemmb/yctrails
