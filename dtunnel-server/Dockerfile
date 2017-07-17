FROM alpine

RUN apk update \
	&& apk add curl \
	&& mkdir /data && cd /data\
	&& curl -L http://dog-tunnel.tk/download/linux64 > dtunnel_linux_x64.tgz \
	&& tar -xvf dtunnel_linux_x64.tgz \
	&& chmod +x dtunnel dtunnel_s
WORKDIR /data
EXPOSE 8018 8000
ENTRYPOINT ["./dtunnel_s"]
