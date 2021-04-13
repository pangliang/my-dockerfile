FROM openjdk:8-jre-slim-buster

RUN sed -i "s@http://deb.debian.org@http://mirrors.aliyun.com@g" /etc/apt/sources.list \
	&& apt-get update \
	&& apt-get install -y wget procps libsnappy-dev libssl-dev

ENV HADOOP_HOME=/opt/hadoop HADOOP_VERSION=3.2.2

# 清除文件在一层, 可以减小image大小
RUN wget -q -O - http://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz | tar -xzf - -C /opt/ \
	&& ln -s /opt/hadoop-${HADOOP_VERSION} ${HADOOP_HOME} \
	&& rm -rf ${HADOOP_HOME}/share/doc \
	&& rm -rf ${HADOOP_HOME}/share/hadoop/*/sources \
	&& rm -rf ${HADOOP_HOME}share/hadoop/mapreduce/lib-examples \
	&& rm -rf ${HADOOP_HOME}/share/hadoop/yarn/test \
	&& rm -rf ${HADOOP_HOME}/share/hadoop/common/jdiff

ADD config/ ${HADOOP_HOME}/etc/hadoop/
ADD docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]

