#!/bin/bash

HOME=$(cd "$(dirname "$0")"; pwd)

SERVER_NAME=php7-test
SSH_PORT=21022
HTTP_PORT=21080


docker stop $SERVER_NAME
docker rm $SERVER_NAME
docker run -d -p $HTTP_PORT:80 -p $SSH_PORT:22 -v $HOME:/data -v $HOME/sites/default.conf:/server/tengine/conf/sites/default.conf --name=$SERVER_NAME pangliang/php7-ssh-server

