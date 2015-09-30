#!/bin/bash
docker build --no-cache -t yct/web .
docker run -d -i --name yctweb -p 3000:80 --link rabbit:rabbit --link mongodb:mongodb -t yct/web
