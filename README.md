# docker-kcptun-server
A docker kcptun server version

## 使用方法
默认使用`-c /config.json`的方式启动服务器，所以只需添加一个卷映射即可：
    -v /PATH/TO/YOUR/config.json:/config.json:ro

### 配置文件
参数的种类和意义请参照[kcptun的源码](https://github.com/xtaci/kcptun/blob/master/server/config.go)，最需要修改的参数已经存在在config.json中，服务器程序中几乎所有的参数都有默认值

### 完整运行示例	
`docker run -d -p 4000:4000/udp --name kcptun-4000 --name kcptun --restart=always -v /home/configs/kcptun/config.json:/config.json:ro frankzhang/kcptun-server`

## 进入环境
本镜像已经添加了BASH，所以只需简单的执行下列命令即可
`docker exec -it kcptun-4000 /bin/bash`