#!/bin/bash
~/kafka-docker-compose/kafka_2.13-2.7.0/bin/kafka-topics.sh --bootstrap-server localhost:9092 --create  --topic test-topic --replication-factor 1 --partitions 3
