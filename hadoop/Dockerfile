FROM openjdk:8-jre-alpine

ENV HADOOP_HOME=/opt/hadoop HADOOP_VERSION=3.2.1

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
	&& apk update \
	&& apk add bash curl \
	&& curl http://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz | tar -xzf - -C /opt/ \
	&& ln -s /opt/hadoop-${HADOOP_VERSION} ${HADOOP_HOME} \
	&& rm -rf ${HADOOP_HOME}/share/doc \
			${HADOOP_HOME}/share/hadoop/common/jdiff

ADD config/ ${HADOOP_HOME}/etc/hadoop/
ADD docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]

