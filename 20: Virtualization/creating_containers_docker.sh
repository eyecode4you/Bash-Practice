#!/bin/bash
# Host System -> Host OS -> Container Engine -> Container -> Libraries/Binaries -> App
which docker # docker is a container engine

# Orchestration
  # Managing multiple containers
  # Automation
  # Kubernetes (K8s)

# install docker (Ubuntu)
sudo snap install docker

# USING DOCKER
# view containers in use on sys
sudo docker ps -a

# create a docker container e.g. centos running bash shell
sudo docker run -it centos bash
cat /etc/redhat-release # check if running centos
exit

sudo docker ps -a
# sudo docker start [container-id]
# sudo docker attach [container-id] - jump into container

# delete a container
sudo docker -rm [container-id]
