FROM debian:11

LABEL maintainer="piaoxuewuyin@gmail.com"
WORKDIR /root
# 声明暴露80端口
EXPOSE 80

# 设置时区
ENV TZ=Asia/Shanghai
# 后台账号密码
ENV USERNAME=admin PASSWORD=123456

COPY ./target ./

RUN apt-get update && apt-get install -y nginx php-fpm php-curl \
    php-mbstring php-imagick php-ldap php-imap php-gd php-zip php-bz2 \
    php-intl php-bcmath php-gmp php-apcu && apt-get clean && mkdir /run/php && \
    rm -rf /etc/nginx/sites-available/* && rm -rf /etc/nginx/sites-enabled/* && \
    mv /root/default /etc/nginx/sites-enabled/ && rm -rf /var/www/html && mv /root/source /var/www/html && \
    chown -R www-data:www-data /var/www/html && chmod a+x /root/init.sh


CMD ["/root/init.sh"]