#ssdb

* 安装路径: /usr/local/ssdb
* 数据目录: /usr/local/ssdb/var


#### 运行,给容器命名

	$ docker run -d --name ssdb-name1 pangliang/ssdb

#### 别的容器中使用, 通过刚才启动的名字链接

启动'别的'容器

	$ docker run -it --rm --link ssdb-test1:ssdb pangliang/ssdb /bin/bash

测试

	$ /usr/local/ssdb/ssdb-cli ssdb 8888

