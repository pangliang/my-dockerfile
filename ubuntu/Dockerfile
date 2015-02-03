FROM ubuntu:14.04
MAINTAINER pangliang "418094911@qq.com"

#aliyun mirrors
COPY sources.list /etc/apt/
RUN apt-get update

#some tools
RUN apt-get install -y vim wget curl

#timezone
RUN cp /usr/share/zoneinfo/Asia/ShangHai /etc/localtime

#supervisor
RUN apt-get install -y supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]









