FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y mongodb
RUN apt-get update && apt-get install -y gnupg2

RUN apt-get install -y wget
RUN apt-get install -y software-properties-common
RUN wget -qO- https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add -
RUN tee /etc/apt/trusted.gpg.d/server-6.0.asc

#RUN apt-get install -y mongodb-mongosh

RUN mkdir -p mongo/db

EXPOSE 27017
CMD sleep 3600