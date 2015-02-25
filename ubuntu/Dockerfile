FROM ubuntu:14.04
MAINTAINER pangliang "418094911@qq.com"

#dns
COPY resolv.conf.d /etc/resolvconf/resolv.conf.d

#aliyun mirrors
COPY sources.list /etc/apt/
RUN rm -rf /etc/apt/sources.list.d
RUN apt-get update

#some tools
RUN apt-get install -y vim wget curl supervisor

#timezone
RUN cp /usr/share/zoneinfo/PRC /etc/localtime

#supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]









