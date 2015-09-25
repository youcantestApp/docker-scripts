FROM servebox/phantomjs:latest

ENV NODE_ENV production

RUN apt-get -y update && apt-get -y install git vim nodejs nodejs-legacy npm

RUN npm install pm2@latest -g
RUN npm install -g grunt-cli

RUN git clone https://github.com/youcantestApp/test-executer.git  && cd test-executer && npm install

ADD ./init.sh /

RUN chmod +x /*.sh

ENTRYPOINT ./init.sh
