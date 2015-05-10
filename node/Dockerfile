FROM node:0.10-onbuild

RUN apt-get -y update && apt-get -y install git

RUN git clone git@github.com:youcantestApp/youcantestNode.git && \
  cd youcantestNode && \
  npm install 

ADD ./init.sh /

ENTRYPOINT ./init.sh