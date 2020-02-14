# vim:set ft=dockerfile:

FROM debian:latest

MAINTAINER wluisaraujo
LABEL maintainer="wluisaraujo"

RUN apt update 
RUN apt-get install openjdk-8-jdk-headless
RUN curl -k -o /tmp/rundeck_all.deb https://dl.bintray.com/rundeck/rundeck-deb/rundeck_3.2.2.20200204-1_all.deb
RUN dpkg -i /tmp/rundeck_all.deb 

EXPOSE 4440/tcp
