echo "BUILDING RABBITMQ CONTAINER"
docker build -t frodenas/rabbitmq .
echo "RUNNING RABBITQ CONTAINER WITH DEFAULT DATA"
docker run -d \
    --name rabbitmq \
    -p 5672:5672 \
    -p 15672:15672 \
    -e RABBITMQ_USERNAME=admin \
    -e RABBITMQ_PASSWORD=admin \
    frodenas/rabbitmq