#!/bin/bash

HOME=$(cd "$(dirname "$0")"; pwd)

SERVER_NAME=dev-server
SSH_PORT=10022

docker stop $SERVER_NAME
#docker rm $SERVER_NAME
docker run -d -p $SSH_PORT:22 -v d:\:/win_d -v $HOME/sshd_config:/etc/ssh/sshd_config --name=$SERVER_NAME pangliang/dev-server

