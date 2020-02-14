# vim:set ft=dockerfile:

FROM centos:latest

MAINTAINER wluisaraujo
LABEL maintainer="wluisaraujo"

RUN yum makecache 
RUN yum -y install java-1.8.0
RUN curl -k -o /tmp/latest.rpm https://repo.rundeck.org/latest.rpm && rpm -Uvh /tmp/latest.rpm
RUN yum -y install rundeck && systemctl enable --now rundeck.service

EXPOSE 4440/tcp
