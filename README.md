# for Cisco Network Insight Kafka Consumer bringup.  ND is Kafka producer. <br>
1.  cd to your home directory,  then clone this repo there <br>
2.  cd kafka-docker-compose-NI <br>
3.  sed -i "s/x.x.x.x/your_host_ip/g" docker-compose.yml  e.g.  sed -i "s/x.x.x.x/10.10.10.100/g" docker-compose.yml <br>
4.  docker-compose up --build -d   (or docker-compose build  then docker-compose up -d) <br>
5.  do a docker ps to make sure that sm-kafka and zookeeper is up <br>
6.  execute this script    ./copy_kafka-from-container.sh <br>
7.  cd ACI-Consumer <br>
8.  create the topic test-topic  by running script ./createTopic.sh <br>
9.  start kafka consumer by executing script   ./startConsumer.sh <br>
10. now configure NI to export data to this host:9092 <br>
11. You can also open another terminal to base machine go the the ACI-Consumer directory and  execute ./startProducer.sh  and then type in any message like hello, consumer terminal should see the message <br>




