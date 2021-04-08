# for Cisco Network Insight Kafka Consumer bringup.  ND is Kafka producer. <br>
cd to your home directory,  then clone this repo there <br>
cd kafka-docker-compose-NI <br>
sed -i "s/x.x.x.x/your_host_ip/g" docker-compose.yml  e.g.  sed -i "s/x.x.x.x/10.10.10.100/g" docker-compose.yml <br>
docker-compose up --build -d   (or docker-compose build  then docker-compose up -d) <br>
do a docker ps to make sure that sm-kafka and zookeeper is up <br>
execute this script    ./copy_kafka-from-container.sh <br>
cd ACI-Consumer <br>
create the topic test-topic  by running script ./createTopic.sh <br>
start kafka consumer by executing script   ./startConsumer.sh <br>
now configure NI to export data to this host:9092 <br>
You can also open another terminal to base machine go the the ACI-Consumer directory and  execute ./startProducer.sh  and then type in any message like hello, consumer terminal should see the message <br>




