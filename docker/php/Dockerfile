FROM amazonlinux:2

ENV TZ Asia/Tokyo

RUN \
    amazon-linux-extras install epel -y && \
    yum install -y \
        yum-utils \
        https://rpm.nodesource.com/pub_16.x/el/7/x86_64/nodesource-release-el7-1.noarch.rpm \
        https://rpms.remirepo.net/enterprise/remi-release-7.rpm \
    && \
    yum-config-manager --enable remi-php81 && \
    yum-config-manager --setopt="remi-php81.priority=5" --save && \
    yum-config-manager --enable remi && \
    yum-config-manager --setopt="remi.priority=5" --save && \
    yum install -y \
        composer \
        git \
        httpd \
        jq \
        nmap-ncat \
        nodejs \
        php \
        php-bcmath \
        php-gd \
        php-mbstring \
        php-opcache \
        php-pecl-apcu \
        php-pecl-pcov \
        php-pgsql \
        php-xml \
        tar \
        unzip \
        util-linux-user \
    && \
    yum update -y && \
    rpm -ivh --nodeps https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm && \
    sed -i "s/\$releasever/7/g" /etc/yum.repos.d/pgdg-redhat-all.repo && \
    yum install -y postgresql14 && \
    yum clean all && \
    rm -rf /var/cache/yum && \
    npm i -g npm && \
    rm -rf /root/.npm /root/.config && \
    rm -rf /var/www/* && \
    chmod g+s /usr/share/httpd /var/www && \
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o /etc/bash_completion.d/git-completion.bash && \
    echo 'source /etc/bash_completion.d/git-completion.bash' > /usr/share/httpd/.bashrc && \
    chown -R apache:apache /usr/share/httpd /var/www && \
    chsh -s /usr/bin/bash apache

ENV PATH $PATH:vendor/bin:node_modules/.bin
COPY ssh_config /etc/ssh/ssh_config

CMD ["/usr/sbin/httpd", "-T", "-D", "FOREGROUND"]
