FROM amazonlinux:latest

ENV TZ Asia/Tokyo
ENV COMPOSER_ALLOW_SUPERUSER 1

RUN \
    amazon-linux-extras install postgresql11 epel -y && \
    yum install -y \
        yum-utils \
        https://rpm.nodesource.com/pub_12.x/el/7/x86_64/nodesource-release-el7-1.noarch.rpm \
        https://rpms.remirepo.net/enterprise/remi-release-7.rpm \
    && \
    yum-config-manager --enable remi-php74 && \
    yum-config-manager --setopt="remi-php74.priority=5" --save && \
    yum install -y \
        composer \
        git \
        httpd \
        nodejs \
        php \
        php-bcmath \
        php-opcache \
        php-pecl-memcached \
        php-pgsql \
        tar \
    && \
    yum update -y

RUN rm -rf /var/www/*

EXPOSE 80
CMD /usr/sbin/httpd -T -D FOREGROUND
