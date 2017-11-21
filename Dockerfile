FROM ubuntu:latest
MAINTAINER	Arjun Shrinivas	<vmsnivas@gmail.com>

RUN apt-get update && apt-get upgrade -y && apt-get install -y default-jdk default-jre

EXPOSE 80 5000 22

RUN mkdir -p /opt/apps
COPY ${WORKSPACE}/target/*.war /opt/apps

CMD "java -jar /opt/apps/*.war && while True; do sleep 1000; done"
