FROM openjdk:11-jdk-slim-buster

RUN sed -i "s@deb.debian.org@mirrors.aliyun.com@g" /etc/apt/sources.list \
	&& sed -i "s@security.debian.org@mirrors.aliyun.com@g" /etc/apt/sources.list \
	&& apt-get update \
	&& apt-get install -y wget procps

ENV APP_VERSION=3.0.0.6
ENV APP_HOME=/opt/cmak

RUN cd /opt/ \
	&& wget -q -O - https://github.com/yahoo/CMAK/releases/download/${APP_VERSION}/cmak-${APP_VERSION}.zip | jar xvf /dev/stdin \
	&& ln -s ${APP_HOME}-${APP_VERSION} ${APP_HOME} \
	&& rm -rf ${APP_HOME}/share \
	&& chmod +x ${APP_HOME}/bin/*

WORKDIR ${APP_HOME}
CMD ["/opt/cmak/bin/cmak"]
