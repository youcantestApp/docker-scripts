echo "BUILDING MONGODB CONTAINER"
docker build -t frodenas/mongodb .

echo "CREATING A STORAGE FOLDER"
mkdir -p /tmp/mongodb

echo "RUNNING MONGODB CONTAINER"
docker run -d \
    --name mongodb \
    -p 27017:27017 \
    -p 28017:28017 \
    -e MONGODB_USERNAME=admin \
    -e MONGODB_PASSWORD=admin \
    -e MONGODB_DBNAME=youcantest_db \
    -v /tmp/mongodb:/data \
    frodenas/mongodb