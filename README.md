# for Cisco Network Insight Kafka Consumer bringup.  ND is Kafka producer. <br>


# Prerequisites: <br>
Make sure that docker and docker-compose are installed: <br>

Method for ubuntu bionic 18.04 for installing docker and docker-compose <br>

      "sudo apt update -y" 
      "sudo apt upgrade -y" 
      "sudo echo net.ipv4.ip_forward=1 >> /etc/sysctl.conf" 
      "sudo sysctl  -p" 
      "sudo sysctl --system" 

     Exit out of session and ssh back in: 


      "sudo apt install docker.io -y" 
      "sudo systemctl start docker" 
      "sudo systemctl enable docker" 
      "sudo usermod -aG docker $USER 

    Exit out of session and ssh back in: 

      "sudo apt install docker-compose -y"


       

   


# Once docker and docker-compose are installed, just do the below: <br>

1.  cd to some directory in your ubuntu or local mac, then clone the repo.  git clone https://github.com/soumukhe/kafka-docker-compose-NI.git <br>
2.  cd kafka-docker-compose-NI <br>
3.  sed -i "s/x.x.x.x/your_host_ip/g" docker-compose.yml  e.g.  sed -i "s/x.x.x.x/10.10.10.100/g" docker-compose.yml 
4.  docker-compose up --build -d   (or docker-compose build  then docker-compose up -d) <br>
5.  do a docker ps to make sure that sm-kafka and sm-zookeeper is up 
6.  execute this script    ./copy_kafka-from-container.sh 
7.  cd ACI-Consumer <br>
8.  a topic called test-topic already exists.  If you want to make a new topic create the topic by executing script    ./createTopic.sh  my_topic_name   (where my_topic_name is a name of your choosing) 
9.  start kafka consumer by executing script   ./startConsumer.sh 
10. now configure NI to export data to Topic Name:  test-topic on base_machine_host:9092 
11. You can also open another terminal to base machine go the the ACI-Consumer directory and  execute ./startProducer.sh  and then type in any message like hello, consumer terminal should see the message <br>




