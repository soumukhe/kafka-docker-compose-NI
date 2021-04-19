#!/bin/bash
# $(pwd)/kafka_2.13-2.7.0/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test-topic --from-beginning
cd ..
$(pwd)/kafka_2.13-2.7.0/bin/kafka-console-consumer.sh --bootstrap-server x.x.x.x:9092 --topic test-topic
