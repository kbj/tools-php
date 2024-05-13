# 我爱工具网

根据[HostLoc论坛](https://hostloc.com/thread-1212280-1-1.html?d=1)网友提供的源码搭建

启动方式：

```
 docker run -itd --name tools \
   -e USERNAME=admin \
   -e PASSWORD=123456 \
   -p 80:80 weey/tools-php
```

- `USERNAME`为后台用户名
- `PASSWORD`为后台密码
- `/admin` 打开后台页面
