#!/bin/bash
cd ..
$(pwd)/kafka_2.13-2.7.0/bin/kafka-topics.sh --bootstrap-server localhost:9092 --delete  --topic test-topic 
