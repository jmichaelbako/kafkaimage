# Builds a docker image running Confluent's distribution of Apache Kafka.
# Needs to be linked with a Zookeeper container with alias "zookeeper".
#
# Usage:
#   docker build -t confluent/kafka kafka
#   docker run -d --name kafka --link zookeeper:zookeeper confluent/kafka

FROM confluent/kafka

ADD kafka-server-start /usr/bin/

EXPOSE 9999

USER confluent
ENTRYPOINT ["/usr/local/bin/kafka-docker.sh"]