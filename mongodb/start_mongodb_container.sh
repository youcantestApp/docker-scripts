#!/bin/bash
docker build --no-cache -t yct/mongodb .
docker run -d --name mongodb -p 27017:27017 -e MONGODB_USERNAME=admin -e MONGODB_PASSWORD=admin -e MONGODB_DBNAME=youcantest_db -v /persistedData/mongodb:/data -t yct/mongodb
