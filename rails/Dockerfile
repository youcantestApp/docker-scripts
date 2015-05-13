FROM rails
RUN apt-get -y update && apt-get -y install git vim
RUN git clone https://github.com/guilhermemmb/youCanTestRails.git

RUN cd youCanTestRails && gem install bundler && bundler install

ADD ./init.sh /
RUN chmod +x /*.sh

EXPOSE 3000 

ENTRYPOINT ./init.sh