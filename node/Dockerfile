FROM servebox/phantomjs:latest

RUN apt-get -y update && apt-get -y install git vim nodejs nodejs-legacy npm

RUN npm install pm2@latest -g

RUN git clone https://github.com/youcantestApp/youcantestNode.git && cd youcantestNode && npm install


ADD ./init.sh /

RUN chmod +x /*.sh

ENTRYPOINT ./init.sh
