#!/bin/bash

HOME=$(cd "$(dirname "$0")"; pwd)

SERVER_NAME=www-tcfriend-com
SSH_PORT=10022
HTTP_PORT=10080


docker stop $SERVER_NAME
docker rm $SERVER_NAME
docker run -d -p $HTTP_PORT:80 -p $SSH_PORT:22 \
	-v $HOME/www:/data/www \
	-v $HOME/authorized_keys:/root/.ssh/authorized_keys \
	-v $HOME/nginx.conf:/server/tengine/conf/nginx.conf \
	-v $HOME/sites:/server/tengine/conf/sites \
	-v $HOME/www.conf:/etc/php/7.0/fpm/pool.d/www.conf \
	-v $HOME/php-fpm.conf:/etc/php/7.0/fpm/php-fpm.conf \
	-v $HOME/sshd_config:/etc/ssh/sshd_config \
	--name=$SERVER_NAME pangliang/php7-ssh-server

