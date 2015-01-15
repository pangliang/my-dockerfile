#php-server

* 使用php5-fpm 和tengine 搭建php环境
* tengine 安装目录在/server/tengine
* 站点配置在/server/tengine/conf/sites
* 默认站点代码目录在/server/www

###运行

```bash
$ docker run -d pangliang/php-server
```

###站点目录映射到宿主机

```bash
$ docker run -d pangliang/php-server -v $MYWEB_PATH:/server/www
```

