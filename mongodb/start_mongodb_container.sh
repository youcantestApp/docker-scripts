echo "REMOVING OLD YCTNODE"
docker rm -f guilhermemmb/yctmongodb
docker rmi -f mongodb 

echo "BUILDING MONGODB CONTAINER"
docker build -t guilhermemmb/yctmongodb .

echo "RUNNING MONGODB CONTAINER"
docker run -d \
    --name mongodb \
    -p 27017:27017 \
    -e MONGODB_USERNAME=admin \
    -e MONGODB_PASSWORD=admin \
    -e MONGODB_DBNAME=youcantest_db \
    -t guilhermemmb/yctmongodb