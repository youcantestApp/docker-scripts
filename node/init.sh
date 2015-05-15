#!/bin/bash
cd youcantestNode
node queue_consumer.js &
phantomjs --webdriver=4444 --webdriver-logfile=webdriver.log --webdriver-loglevel=DEBUG
