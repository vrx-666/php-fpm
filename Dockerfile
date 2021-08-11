FROM alpine:3.14.1

LABEL maintainer="developer@s.vrx.pl"
LABEL version="2.0"
LABEL description="Custom docker image php8 fpm."

RUN apk update && apk add --no-cache php8-pecl-apcu php8-bcmath php8-cli php8-common php8-curl php8-ctype php8-dev php8-fileinfo php8-fpm php8-gd php8-iconv php8-pecl-imagick php8-imap php8-intl php8-json php8-ldap php8-mbstring php8-mysqli php8-opcache php8-pgsql php8-session php8-soap php8-xml php8-xsl php8-zip && \
    rm -rf /var/cache/apk/* && \
    mkdir -p /run/php && \
    mkdir -p /var/www && \
    ln -s /usr/bin/php8 /usr/bin/php
    
COPY php.ini /etc/php8/php.ini
COPY www.conf /etc/php8/php-fpm.d/www.conf
COPY start.sh /start.sh

VOLUME ["/var/www"]

CMD ["/start.sh"]

EXPOSE 9000
