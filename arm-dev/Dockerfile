FROM	ubuntu:12.04
MAINTAINER pangliang "418094911@qq.com"

COPY sources.list /etc/apt/
RUN rm -rf /etc/apt/sources.list.d

RUN	apt-get update && apt-get install -y \
	apt-utils \
	openssh-server \
	build-essential \
	gcc-arm-linux-gnueabihf \
	g++-arm-linux-gnueabihf \
	gcc-arm-linux-gnueabi \
	g++-arm-linux-gnueabi \
	unzip \
	sudo \
	git \
	vim \
	bc \
	u-boot-tools \
	device-tree-compiler \
	ia32-libs \
	pkg-config \
	libusb-1.0-0-dev \
	python-software-properties \
	software-properties-common \
	libncurses5-dev \
	busybox

RUN	mkdir /var/run/sshd
RUN	echo 'root:root' | chpasswd
RUN 	sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN 	sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

EXPOSE	22

CMD	["/usr/sbin/sshd", "-D"]
