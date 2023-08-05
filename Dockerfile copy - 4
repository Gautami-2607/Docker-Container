FROM ubuntu:18.04
RUN apt-get update
RUN apt -y upgrade

RUN apt-get install -y mongodb 
# RUN apt-get install -y mongodb-database 
RUN apt-get install -y mongodb-server 
# RUN apt-get install -y mongodb-shell 
# RUN apt-get install -y mongodb-mongos 
# RUN apt-get install -y mongodb-tools

RUN apt-get update && apt-get install -y gnupg2
RUN apt-get install -y wget
RUN wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc

RUN apt-get install -y apt-transport-https ca-certificates curl software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg
RUN tee /etc/apt/trusted.gpg.d/server-6.0.asc

RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/5.0 multiverse"
RUN tee /etc/apt/sources.list.d/mongodb-org-5.0.list

RUN apt install -y yum


EXPOSE 27017
EXPOSE 8081
CMD sleep 3600