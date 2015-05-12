FROM node:0.10.38

RUN apt-get -y update && apt-get -y install git vim

RUN npm install -g phantomjs

RUN git clone https://github.com/youcantestApp/youcantestNode.git && \
  cd youcantestNode && \
  npm install 

ADD ./init.sh /

ENTRYPOINT ./init.sh

