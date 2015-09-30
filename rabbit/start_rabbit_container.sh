echo "BUILDING RABBITMQ CONTAINER"
docker build --no-cache -t guilhermemmb/rabbitmq .

echo "REMOVING OLD YCTNODE"
docker rm -f rabbitmq 
docker rmi -f rabbitmq

echo "RUNNING RABBITQ CONTAINER WITH DEFAULT DATA"
docker run -d \
	-i \
    -p 5672:5672 \
    -p 15672:15672 \
    -e RABBITMQ_USERNAME=admin \
    -e RABBITMQ_PASSWORD=admin \
    --name rabbit \
    -t yct/rabbitmq
