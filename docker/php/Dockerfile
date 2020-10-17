FROM amazonlinux:latest

ENV TZ Asia/Tokyo
ENV COMPOSER_ALLOW_SUPERUSER 1

RUN \
    amazon-linux-extras install epel -y && \
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
        unzip \
    && \
    yum update -y

RUN rpm -ivh --nodeps https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm
RUN sed -i 's/\$releasever/7/g' /etc/yum.repos.d/pgdg-redhat-all.repo
RUN yum install -y postgresql13

RUN rm -rf /var/www/*
ENV PATH $PATH:vendor/bin:node_modules/.bin
RUN mkdir ~/.ssh
COPY ssh_config /root/.ssh/config
RUN chmod 600 /root/.ssh/config

EXPOSE 80
CMD /usr/sbin/httpd -T -D FOREGROUND
