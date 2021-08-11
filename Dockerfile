FROM alpine:3.14.1

LABEL maintainer="developer@s.vrx.pl"
LABEL version="2.0"
LABEL description="Custom docker image php 7.4 fpm."

RUN apk update && apk add --no-cache php7-apcu php7-pecl-apcu php7-bcmath php7-cli php7-common php7-curl php7-ctype php7-dev php7-fileinfo php7-fpm php7-gd php7-iconv php7-imagick php7-imap php7-intl php7-json php7-ldap php7-mbstring php7-mysqli php7-opcache php7-pgsql php7-session php7-soap php7-xml php7-xsl php7-zip php7-zmq && \
    rm -rf /var/cache/apk/* && \
    mkdir -p /run/php && \
    mkdir -p /var/www
    
COPY php.ini /etc/php7/php.ini
COPY www.conf /etc/php7/php-fpm.d/www.conf
COPY start.sh /start.sh

VOLUME ["/var/www"]

CMD ["/start.sh"]

EXPOSE 9000
