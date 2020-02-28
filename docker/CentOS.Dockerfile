# vim:set ft=dockerfile:

FROM centos:latest

MAINTAINER wluisaraujo
LABEL maintainer="wluisaraujo"

RUN yum install -y java-1.8.0-openjdk.x86_64
RUN yum install -y https://repo.rundeck.org/latest.rpm
RUN yum install -y rundeck
RUN systemctl enable --now rundeckd

EXPOSE 4440/tcp

ENTRYPOINT ["/sbin/init"]
