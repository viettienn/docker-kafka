FROM ubuntu

MAINTAINER viettienn

RUN wget -q http://mirror.nus.edu.sg/apache/kafka/0.8.1/kafka_2.9.2-0.8.1.tgz -O /tmp/kafka_2.9.2-0.8.1.tgz
RUN tar -xzf /tmp/kafka_2.9.2-0.8.1.tgz -C /usr/local/
RUN /usr/local/kafka_2.9.2-0.8.1/bin/zookeeper-server-start.sh config/zookeeper.properties
RUN /usr/local/kafka_2.9.2-0.8.1/bin/kafka-server-start.sh config/server.properties
