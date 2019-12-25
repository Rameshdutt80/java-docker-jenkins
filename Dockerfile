FROM ubuntu

MAINTAINER RameshDutt

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10

RUN echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | tee -a /etc/apt/sources.list.d/10gen.list

RUN apt update

RUN apt -y install apt-utils

RUN apt -y install mongodb-10gen

#RUN echo "" >> /etc/mongodb.conf

CMD ["/usr/bin/mongod", "--config", "/etc/mongodb.conf"] 