FROM node:0.10.38

RUN apt-get -y update && apt-get -y install git vim

RUN cd /usr/local/share && \
	 wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2 && \
	 tar xjf phantomjs-1.9.7-linux-x86_64.tar.bz2 && \
	 ln -s /usr/local/share/phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/local/share/phantomjs && \
	 ln -s /usr/local/share/phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs && \
	 ln -s /usr/local/share/phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/bin/phantomjs

RUN git clone https://github.com/youcantestApp/youcantestNode.git && \
  cd youcantestNode && \
  npm install 


ADD ./init.sh /

RUN chmod +x init.sh

ENTRYPOINT ./init.sh