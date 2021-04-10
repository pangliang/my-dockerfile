FROM alpine:3.13.4

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
	&& apk update \
    && apk add tini\
		curl\
        jq

COPY --from=almir/webhook:2.8.0 /usr/local/bin/webhook /usr/local/bin/webhook

WORKDIR /etc/webhook
ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/webhook"]