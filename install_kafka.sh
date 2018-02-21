#!/bin/sh

mkdir /kafka
cd /kafka/
wget http://mirrors.ircam.fr/pub/apache/kafka/1.0.0/kafka_2.11-1.0.0.tgz
tar -xzf kafka_2.11-1.0.0.tgz
rm kafka_2.11-1.0.0.tgz
echo "alias zookeeper='/kafka/kafka_2.11-1.0.0/bin/zookeeper-server-start.sh ~/kafka/kafka_2.11-1.0.0/config/zookeeper.properties'" >> ~/.bash_aliases
echo "alias kafka='/kafka/kafka_2.11-1.0.0/bin/kafka-server-start.sh ~/kafka/kafka_2.11-1.0.0/config/server.properties'" >> ~/.bash_aliases
echo "Done"