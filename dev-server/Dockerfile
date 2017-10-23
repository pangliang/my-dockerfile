FROM registry.cn-qingdao.aliyuncs.com/pangliang/ubuntu
MAINTAINER pangliang "418094911@qq.com"

#install 
RUN apt-get update \
	&& apt-get install -y git build-essential

#oh-my-home
RUN git clone https://github.com/pangliang/oh-my-home.git ~/.oh-my-home \
	&& cd ~/.oh-my-home \
	&& /bin/bash ./install.sh


#sshd
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
ADD sshd_config /etc/ssh/sshd_config

# supervisord
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Expose ports.
EXPOSE 22



