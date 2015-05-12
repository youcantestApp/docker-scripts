#!/bin/bash
docker build -t guilhermemmb/yctmongodb .
docker run -d --name mongodb -p 27017:27017 -e MONGODB_USERNAME=admin -e MONGODB_PASSWORD=admin -e MONGODB_DBNAME=youcantest_db -t guilhermemmb/yctmongodb