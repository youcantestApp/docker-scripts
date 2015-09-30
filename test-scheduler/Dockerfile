FROM ubuntu:trusty

RUN apt-get -y update && apt-get -y install git vim curl

RUN sudo curl --silent --location https://deb.nodesource.com/setup_4.x | sudo bash -

RUN apt-get -y install nodejs

RUN npm install -g pm2@latest
RUN npm install -g grunt-cli

RUN git clone https://github.com/youcantestApp/test-scheduler.git && cd test-scheduler && npm i

ADD ./docker_init.sh /

RUN chmod +x /*.sh
