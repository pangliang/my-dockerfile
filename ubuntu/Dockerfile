FROM registry.mirrors.aliyuncs.com/library/ubuntu
MAINTAINER pangliang "418094911@qq.com"

#aliyun mirrors
COPY sources.list /etc/apt/
RUN apt-get update

#supervisor
RUN apt-get install -y supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf


CMD ["/usr/bin/supervisord"]









