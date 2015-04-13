FROM ubuntu:14.04
MAINTAINER pangliang "418094911@qq.com"

RUN apt-get update \
        && apt-get install -y supervisor pptpd iptables

RUN sed -i 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/g' /etc/sysctl.conf \
        #&& sed -i 's/exit 0/iptables -t nat -A POSTROUTING -o eth0 -s 192.168.0.0\/24 -j MASQUERADE\n exit 0/g' /etc/rc.local \
        && echo "done"

ADD pptpd.conf	/etc/pptpd.conf
ADD pptpd-options /etc/ppp/pptpd-options
ADD run.sh	/run.sh


#timezone
RUN echo "Asia/Shanghai" >/etc/timezone \
        && dpkg-reconfigure --frontend noninteractive tzdata

#supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]
