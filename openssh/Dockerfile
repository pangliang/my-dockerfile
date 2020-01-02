FROM alpine:3.11

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
	&& apk update \
	&& apk add openssh \
	&& ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -N '' \
	&& ssh-keygen -t rsa -b 4096 -f /etc/ssh/ssh_host_rsa_key -N ''

COPY sshd_config /etc/ssh/sshd_config

CMD ["/usr/sbin/sshd", "-D", "-e"]
