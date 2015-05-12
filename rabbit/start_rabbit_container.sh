echo "BUILDING RABBITMQ CONTAINER"
docker build -t guilhermemmb/yctrabbit .

echo "REMOVING OLD YCTNODE"
docker rm -f yctrabbit 
docker rmi -f rabbit

echo "RUNNING RABBITQ CONTAINER WITH DEFAULT DATA"
docker run -d \
	-i \
    -p 5672:5672 \
    -p 15672:15672 \
    -e RABBITMQ_USERNAME=admin \
    -e RABBITMQ_PASSWORD=admin \
    --name rabbit \
    -t guilhermemmb/yctrabbit