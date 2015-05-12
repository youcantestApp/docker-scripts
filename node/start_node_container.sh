sudo docker build -t guilhermemmb/yctnode .
sudo docker run --name yctnode --link rabbit:rabbit --link mongodb:mongodb -t guilhermemmb/yctnode
