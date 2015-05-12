echo "REMOVING OLD YCTNODE"
docker rm -f yctnode
docker rmi -f guilhermemmb/yctnode

echo "BUILDING YCTNODE CONTAINER"
docker build -t guilhermemmb/yctnode .

echo "RUNNING YCT CONTAINER"
docker run -d \
    --name yctnode \
    --link rabbit:rabbit \
    --link mongodb:mongodb \
    -t guilhermemmb/yctnode
