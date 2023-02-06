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


# if option --create
if [ "$1" == "--create" ];then
  
  echo ""
  echo "--create run"
  echo ""

# if option drop
elif [ "$1" == "--drop" ];then
  
  echo ""
  echo "--drop run"
  echo ""

# if option start
elif [ "$1" == "--start" ];then

  echo ""
  echo "--start run"
  echo ""

# if option info
elif [ "$1" == "--info" ];then

  echo ""
  echo "--infos run"
  echo ""

# if option ansible
elif [ "$1" == "--ansible" ];then

  echo ""
  echo "--ansible run"
  echo ""

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
