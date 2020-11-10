FROM openjdk:8-jdk-slim-buster

RUN sed -i "s@http://deb.debian.org@http://mirrors.aliyun.com@g" /etc/apt/sources.list \
	&& apt-get update \
	&& apt-get install -y wget procps

ENV APP_HOME=/opt/hbase APP_VERSION=2.3.3

RUN wget -q -O - https://mirrors.tuna.tsinghua.edu.cn/apache/hbase/${APP_VERSION}/hbase-${APP_VERSION}-bin.tar.gz | tar -xzf - -C /opt/ \
	&& ln -s ${APP_HOME}-${APP_VERSION} ${APP_HOME}

ADD config/ ${APP_HOME}/conf/
WORKDIR ${APP_HOME}
ENTRYPOINT [ "/opt/hbase/bin/start-hbase.sh" ]
