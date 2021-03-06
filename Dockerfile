FROM ubuntu

MAINTAINER Cameron Stitt <cameron@cam.st>

RUN echo "deb http://archive.ubuntu.com/ubuntu/ raring main universe" >> /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y software-properties-common
RUN apt-get install -y python-software-properties
RUN add-apt-repository ppa:fkrull/deadsnakes
RUN apt-get update

RUN apt-get install -y python3.4
RUN apt-get install -y python3.4-dev
RUN apt-get install -y python3-pip
