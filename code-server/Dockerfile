FROM codercom/code-server:3.6.0

USER root

RUN sed -i "s@http://deb.debian.org@http://mirrors.aliyun.com@g" /etc/apt/sources.list \
    && sed -i "s@http://security.debian.org@http://mirrors.aliyun.com@g" /etc/apt/sources.list \
	&& apt-get update \
	&& apt-get install -y wget fish tmux

COPY --from=docker:dind /usr/local/bin/docker /usr/local/bin/docker
