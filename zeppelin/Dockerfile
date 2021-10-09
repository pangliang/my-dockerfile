FROM flink:1.14.0-scala_2.11-java8

ADD zeppelin-0.11.0-SNAPSHOT.tar.gz /

RUN sed -i "s@deb.debian.org@mirrors.aliyun.com@g" /etc/apt/sources.list \
        && sed -i "s@security.debian.org@mirrors.aliyun.com@g" /etc/apt/sources.list \
        && apt-get update \
        && apt-get install -y wget procps \
        && ln -s /zeppelin-0.11.0-SNAPSHOT /zeppelin

WORKDIR /zeppelin
ENTRYPOINT ["/zeppelin/bin/zeppelin.sh"]