#!/bin/bash

usage() {
        echo " "
        echo "Usage:"
        echo "changeHostIP.sh your_host_ip  In Ubuntu, you can do a 'ip a' to find the host IP  "
        } 

changehostip() {
                hostip=$1
		sed -i "s/x.x.x.x/$hostip/g" docker-compose.yml
		sed -i "s/x.x.x.x/$hostip/g" ./ACI-Consumer/startConsumer.sh

              }

# MAIN
if [[ $# -eq 0 ]] ; then
        usage
        exit 1

else changehostip $1

fi
