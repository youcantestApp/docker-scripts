#!/bin/bash
cd youcantestNode
node queue_consumer.js &
phantomjs --webdriver=4444
