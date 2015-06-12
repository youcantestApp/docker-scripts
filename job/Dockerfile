FROM ubuntu:trusty

RUN apt-get -y update && apt-get -y install git vim npm nodejs nodejs-legacy 

RUN npm install pm2@latest -g

RUN git clone https://github.com/youcantestApp/yctJob.git && cd yctJob && npm install

ADD ./init.sh /

RUN chmod +x /*.sh

#ENTRYPOINT ./init.sh
