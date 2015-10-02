#!/bin/bash
docker build -t yct/healthcheck .
docker run -d -i  --name healthcheck --link rabbit:rabbit --link mongodb:mongodb -t yct/healthcheck
