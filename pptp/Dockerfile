FROM pangliang/ubuntu
MAINTAINER pangliang "418094911@qq.com"


RUN apt-get update \
	&& apt-get install -y supervisor pptpd iptables \
	&& sed -i '1s/^/iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE/' /etc/rc.local \
	&& sed -i 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/g' /etc/sysctl.conf \
	&& echo "done......"

ADD options.pptpd	/etc/ppp/options.pptpd
ADD pptpd.conf		/etc/pptpd.conf


#timezone
RUN echo "Asia/Shanghai" >/etc/timezone \
	&& dpkg-reconfigure --frontend noninteractive tzdata

#supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]
