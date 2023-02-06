#!/bin/bash

#####################################################
#
# Description : deployement docker container
#
# Auteur : Sebastien J.
#
# Date : 06/02/2023
#
####################################################


# if option --create, create docker container
if [ "$1" == "--create" ];then

  echo -e "\n--create run\n"
  # define total container number
  total_engine=1
  [ "$2" != "" ] && total_engine=$2

  # creation of container
  echo -e "\nStart container('s) creation\n"
  for i in $(seq 1 $total_engine);do
    docker run -tid --name $USER-alpine-$i alpine:latest
    echo "${USER-alpine-$i} was created"
  done

# if option --drop, remove docker container
elif [ "$1" == "--drop" ];then

  # deleting containers
  echo -e "\nDeleting all containers created\n"
  docker rm -f $(docker ps -a | grep $USER-alpine | awk '{print $1}')

# if option --start, run docker container
elif [ "$1" == "--start" ];then

  echo -e "\n--start run\n"

# if option --info
elif [ "$1" == "--info" ];then

  echo -e "\n--infos run\n"

# if option --ansible
elif [ "$1" == "--ansible" ];then

  echo -e "\n--ansible run\n"

# if not given option, display help
else

  echo "
Usages:
    - --create [number of container]: create n container
    - --drop: delete container create by deploy.sh
    - --info: get container information (ip, name, user...)
    - --start: restart container
    - --ansible: ansible tree deployment
"

fi
