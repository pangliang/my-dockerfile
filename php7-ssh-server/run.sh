#!/bin/bash

HOME=$(cd "$(dirname "$0")"; pwd)

SERVER_NAME=php7-test-server
SSH_PORT=10022
HTTP_PORT=10080

docker stop $SERVER_NAME-mysql
docker rm $SERVER_NAME-mysql
docker run -d --name=$SERVER_NAME-mysql \
	-v $HOME/mysql-data:/var/lib/mysql \
	-e MYSQL_ROOT_PASSWORD=root123456 \
	mysql:5.6

docker stop $SERVER_NAME
docker rm $SERVER_NAME
docker run -d --name=$SERVER_NAME \
	-p $HTTP_PORT:80 \
	-p $SSH_PORT:22 \
	-v $HOME:/data \
	-v $HOME/config/authorized_keys:/root/.ssh/authorized_keys \
	-v $HOME/config/nginx.conf:/server/tengine/conf/nginx.conf \
	-v $HOME/config/sites:/server/tengine/conf/sites \
	-v $HOME/config/www.conf:/etc/php/7.0/fpm/pool.d/www.conf \
	-v $HOME/config/php-fpm.conf:/etc/php/7.0/fpm/php-fpm.conf \
	-v $HOME/config/sshd_config:/etc/ssh/sshd_config \
	--link	$SERVER_NAME-mysql:mysql \
	pangliang/php7-ssh-server

