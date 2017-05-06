FROM pangliang/ubuntu
MAINTAINER pangliang "418094911@qq.com"

# motd welcome
ADD 01-welcome /etc/update-motd.d/
RUN run-parts /etc/update-motd.d/

# apt update
RUN apt-get update

# php7 apt-repository
#RUN apt-get install -y software-properties-common python-software-properties
#RUN mkdir -p /etc/apt/sources.list.d/
#RUN add-apt-repository ppa:ondrej/php
#RUN apt-get update

# tengine
RUN apt-get install -y build-essential libpcre3-dev libssl-dev cronolog 
RUN \
	mkdir /server && \
	curl http://tengine.taobao.org/download/tengine-2.1.0.tar.gz >/tmp/tengine-2.1.0.tar.gz && \
	cd /tmp/ && \
	tar -xvf tengine-2.1.0.tar.gz && \
	cd tengine-2.1.0 && \
	./configure --prefix=/server/tengine && \
	make && make install && \
	rm -rf /tmp/tengine* && \
	chown www-data /server/tengine/logs -R

# php7.0-fpm
RUN apt-get install -y php7.0-mysql php7.0-fpm php7.0-cli php7.0-curl php7.0-json php7.0-mcrypt php7.0-gd php7.0-mbstring php7.0-xml

#sshd
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

# supervisord
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Expose ports.
EXPOSE 80
EXPOSE 443
EXPOSE 22
