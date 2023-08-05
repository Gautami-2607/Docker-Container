FROM ubuntu
RUN apt-get install -y riak
USER 751
RUN docker build -t my_mongodb . 

EXPOSE 27017
CMD sleep 3600