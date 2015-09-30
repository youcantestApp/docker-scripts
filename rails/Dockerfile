FROM rails
RUN apt-get -y update && apt-get -y install git vim
RUN git clone https://github.com/youcantestApp/web.git

RUN cd web && gem install bundler && bundler install

ADD ./init.sh /
RUN chmod +x /*.sh

EXPOSE 3000 

ENTRYPOINT ./init.sh
