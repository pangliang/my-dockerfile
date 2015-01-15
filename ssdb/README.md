#ssdb


### 运行:

	```bash
		$ docker run -d --name ssdb-name1 pangliang/ssdb
	```

### 别的容器中使用
* 启动'别的'容器
	
	```bash
		$ docker run -it --rm --link ssdb-test1:ssdb pangliang/ssdb /bin/bash
	```
* 测试
	```bash
		$ /usr/local/ssdb/ssdb-cli ssdb 8888
	```

