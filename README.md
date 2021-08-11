# php-fpm7.4
Docker image based on alpine:3.14 providing php-fpm 7.4<br>
```
php7-apcu
php7-pecl-apcu
php7-bcmath
php7-cli
php7-common
php7-curl
php7-ctype
php7-dev
php7-fileinfo
php7-fpm
php7-gd
php7-iconv
php7-imagick
php7-imap
php7-intl
php7-json
php7-ldap
php7-mbstring
php7-mysqli
php7-opcache
php7-pgsql
php7-session
php7-soap
php7-xml
php7-xsl
php7-zip
php7-zmq
```
Build docker with 
```
docker build -t IMAGE_NAME .
```
Example compose file
```
php:
    image: pwa666/php7.4fpm:TAG
    volumes:
      - "/LOCAL/PATH/TO/PHP_FILES:/var/www"
      - "/LOCAL/PATH/TO/PHP_POOL_CONF:/etc/php7/php-fpm.d/www.conf"
    working_dir: /usr/local/src/app
    restart: always
    environment:
      TZ: "Region/City"
```
