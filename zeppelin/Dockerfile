FROM flink:1.10.1-scala_2.11

ADD zeppelin-0.9.0-SNAPSHOT.tar.gz /

RUN sed -i "s@deb.debian.org@mirrors.aliyun.com@g" /etc/apt/sources.list \
	&& sed -i "s@security.debian.org@mirrors.aliyun.com@g" /etc/apt/sources.list \
	&& apt-get update \
	&& apt-get install -y wget procps \
	&& ln -s /zeppelin-0.9.0-SNAPSHOT /zeppelin

WORKDIR /zeppelin
CMD ["/zeppelin/bin/zeppelin.sh"]
