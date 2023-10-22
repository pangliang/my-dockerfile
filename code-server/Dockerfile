ARG VER
FROM codercom/code-server:${VER}

USER root
RUN sed -i "s@http://deb.debian.org@http://mirrors.cloud.aliyuncs.com@g" /etc/apt/sources.list \
    && sed -i "s@http://security.debian.org@http://mirrors.cloud.aliyuncs.com@g" /etc/apt/sources.list \
	&& apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y wget fish tmux apt-transport-https gnupg2 vim dnsutils iputils-ping net-tools openjdk-11-jdk\
	&& rm /bin/sh \
	&& ln -s /bin/bash /bin/sh

RUN echo "deb http://mirrors.cloud.aliyuncs.com/debian bullseye-backports main" >> /etc/apt/sources.list \
	&& apt-get -t bullseye-backports update \
	&& apt-get -t bullseye-backports upgrade -y

RUN curl http://mirrors.cloud.aliyuncs.com/kubernetes/apt/doc/apt-key.gpg | apt-key add - \
	&& echo "deb http://mirrors.cloud.aliyuncs.com/kubernetes/apt/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list \
	&& apt-get update \
	&& apt-get install -y kubectl

COPY --from=docker:dind /usr/local/bin/docker /usr/local/bin/docker

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
