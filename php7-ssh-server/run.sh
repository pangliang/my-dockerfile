#!/bin/bash

HOME=$(cd "$(dirname "$0")"; pwd)

SERVER_NAME=php7-test
SSH_PORT=21022
HTTP_PORT=21080


docker stop $SERVER_NAME
docker rm $SERVER_NAME
docker run -d -p $HTTP_PORT:80 -p $SSH_PORT:22 \
	-v $HOME:/data \
	-v $HOME/authorized_keys:/root/.ssh/ \
	-v $HOME/nginx.conf:/server/tengine/conf/ \
	-v $HOME/sites:/server/tengine/conf/sites \
	-v $HOME/www.conf:/etc/php/7.0/fpm/pool.d/ \
	-v $HOME/php-fpm.conf:/etc/php/7.0/fpm/ \
	-v $HOME/sshd_config:/etc/ssh/ \
	--name=$SERVER_NAME pangliang/php7-ssh-server

