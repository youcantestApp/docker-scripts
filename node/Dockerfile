FROM servebox/phantomjs:latest

RUN apt-get -y update && apt-get -y install git vim nodejs npm

RUN git clone https://github.com/youcantestApp/youcantestNode.git && cd youcantestNode && npm install

ADD ./init.sh /

RUN chmod +x /*.sh

ENTRYPOINT ./init.sh
