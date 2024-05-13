#!/bin/bash

# 初始化账号密码
sed -i "s/admin/$USERNAME/g" /var/www/html/config/admin.php && sed -i "s/123456/$PASSWORD/g" /var/www/html/config/admin.php

# 启动
/usr/sbin/php-fpm7.4 -D && /usr/sbin/nginx -g 'daemon off;'