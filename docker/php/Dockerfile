FROM amazonlinux:latest

ENV TZ Asia/Tokyo

RUN \
    amazon-linux-extras install epel -y && \
    yum install -y \
        yum-utils \
        https://rpm.nodesource.com/pub_14.x/el/7/x86_64/nodesource-release-el7-1.noarch.rpm \
        https://rpms.remirepo.net/enterprise/remi-release-7.rpm \
    && \
    yum-config-manager --enable remi-php80 && \
    yum-config-manager --setopt="remi-php80.priority=5" --save && \
    yum-config-manager --enable remi && \
    yum-config-manager --setopt="remi.priority=5" --save && \
    yum install -y \
        composer \
        git \
        httpd \
        nmap-ncat \
        nodejs \
        php \
        php-bcmath \
        php-mbstring \
        php-opcache \
        php-pecl-memcached \
        php-pgsql \
        php-xml \
        tar \
        unzip \
        util-linux-user \
    && \
    yum update -y

RUN rpm -ivh --nodeps https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm
RUN sed -i 's/\$releasever/7/g' /etc/yum.repos.d/pgdg-redhat-all.repo
RUN yum install -y postgresql13
RUN yum clean all

RUN rm -rf /var/www/*
ENV PATH $PATH:vendor/bin:node_modules/.bin
COPY ssh_config /etc/ssh/ssh_config

RUN chown apache:apache /usr/share/httpd /var/www
RUN chmod g+s /usr/share/httpd /var/www
RUN chsh -s /usr/bin/bash apache

RUN npm i -g npm
RUN rm -rf /root/.npm /root/.config

CMD /usr/sbin/httpd -T -D FOREGROUND
