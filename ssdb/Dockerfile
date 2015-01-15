FROM pangliang/ubuntu
MAINTAINER pangliang "418094911@qq.com"

# tengine
RUN apt-get install -y build-essential unzip 
RUN \
	cd /tmp && \
	wget --no-check-certificate https://github.com/ideawu/ssdb/archive/master.zip && \
	unzip master.zip && \
	cd ssdb-master && \
	make && make install && \
	rm -rf /tmp/* 

ADD ssdb.conf /usr/local/ssdb/

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Expose ports.
EXPOSE 8888
