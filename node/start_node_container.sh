echo "BUILDING YCTNODE CONTAINER"
docker build -t guilhermemmb/yctnode .

echo "RUNNING MONGODB CONTAINER"
docker run -i -d \
    --name mongodb \
    --link mongodb:mongodb \
    --link rabbit:rabbit \
    -t guilhermemmb/yctnode
