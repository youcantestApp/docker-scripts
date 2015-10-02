#/bin/bash
cd test-scheduler
grunt build
pm2 start pm2/test-scheduler.json
