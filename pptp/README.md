#pptp

用docker搭pptp vpn

#设置密码文件

vpn需要用户名密码, 保存在文件中, 可以放在宿主机,格式:

		用户名       *       密码      *
		

#运行

		dk run --name pptpd --privileged -d \
			-v 密码文件路径:/etc/ppp/chap-secrets \
			-p 1723:1723 pangliang/pptpd