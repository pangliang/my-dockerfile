FROM apache/flink:1.14.3-scala_2.11-java8

ADD sources.list /etc/apt/sources.list
RUN sed -i "s@deb.debian.org@mirrors.cloud.aliyuncs.com@g" /etc/apt/sources.list \
        && sed -i "s@security.debian.org@mirrors.cloud.aliyuncs.com@g" /etc/apt/sources.list \
        && sed -i "s@mirrors.aliyun.com@mirrors.cloud.aliyuncs.com@g" /etc/apt/sources.list \
        && apt-get update

RUN apt-get update \
        && apt-get install -y wget procps git maven npm r-base-dev r-cran-evaluate openjdk-8-jdk \
        || apt-get install -y wget procps git maven npm r-base-dev r-cran-evaluate openjdk-8-jdk --fix-missing

WORKDIR /zeppelin

RUN git clone https://github.com/apache/zeppelin.git .

ADD settings.xml /root/.m2/settings.xml
# RUN JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 mvn clean package -DskipTests -DskipRat \
#         -Pbuild-distr \
#         -pl zeppelin-server,zeppelin-web \
#         -pl flink/flink-scala-2.11,flink/flink-scala-2.12 \
#         -pl spark/interpreter,spark/scala-2.13 \
#         -Pspark-3.2 -Pspark-scala-2.12 -Dspark.version=3.2.3 \
#         -Dspark.bin.download.url='http://mirrors.cloud.aliyuncs.com/apache/spark/${spark.archive}/${spark.archive}-bin-without-hadoop.tgz' \
#         -am
RUN JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 mvn clean package -DskipTests -DskipRat

ENTRYPOINT ["/zeppelin/bin/zeppelin.sh"]