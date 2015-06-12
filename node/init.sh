#!/bin/bash
phantomjs --webdriver=4444 --webdriver-logfile=webdriver.log --webdriver-loglevel=INFO
cd youcantestNode
pm2 start queue_consumer.js -i 2
