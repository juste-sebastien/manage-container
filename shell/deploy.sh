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

  total_engine=1
  [ "$2" != "" ] && total_engine=$2
  docker run -tid --name $USER-alpine alpine:latest

  echo "${total_engine} was create"

# if option --drop, remove docker container
elif [ "$1" == "--drop" ];then

  echo -e "\n--drop run\n"

  docker rm -f $USER-alpine

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
    - --create: run container
    - --drop: delete container create by deploy.sh
    - --info: get container information (ip, name, user...)
    - --start: restart container
    - --ansible: ansible tree deployment
"

fi
