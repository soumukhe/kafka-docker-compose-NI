#!/bin/bash

usage() {
        echo " "
        echo "Usage:"
        echo "createTopic.sh some-topic_name"
        } 

kreateTopic() {
                cd ..
		topicname=$1
		$(pwd)/kafka_2.13-2.7.0/bin/kafka-topics.sh --bootstrap-server localhost:9092 --create  --topic $topicname --replication-factor 1 --partitions 3
              }

# MAIN
if [[ $# -eq 0 ]] ; then
	usage
    	exit 1

else kreateTopic $1	

fi

