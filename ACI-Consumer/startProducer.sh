#!/bin/bash
#  Start the producer; type in some message,  consumer should get it
~/kafka-docker-compose/kafka_2.13-2.7.0/bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic test-topic
