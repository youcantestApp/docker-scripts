#!/bin/bash
echo "starting phantomjs"
phantomjs --webdriver=4444 &
cd youcantestNode
echo "Starting queue consumer"
node queue_consumer.js
