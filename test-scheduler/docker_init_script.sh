#/bin/bash
cd healthcheck
grunt build
pm2 start pm2/healthcheck.json
