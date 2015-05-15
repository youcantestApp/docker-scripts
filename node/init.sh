#!/bin/bash
cd youcantestNode
nodejs queue_consumer.js &
phantomjs --webdriver=4444 --webdriver-logfile=webdriver.log --webdriver-loglevel=INFO