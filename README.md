# php-fpm8
Docker image based on alpine:3.14.1 providing php-fpm 8<br>
```
php8-pecl-apcu
php8-bcmath
php8-cli
php8-common
php8-curl
php8-ctype
php8-dev
php8-fileinfo
php8-fpm
php8-gd
php8-iconv
php8-pecl-imagick
php8-imap
php8-intl
php8-json
php8-ldap
php8-mbstring
php8-mysqli
php8-opcache
php8-pgsql
php8-session
php8-soap
php8-xml
php8-xsl
php8-zip
```
Build docker with 
```
docker build -t IMAGE_NAME .
```
Example compose file
```
php:
    image: pwa666/php8fpm:latest
    volumes:
      - "/LOCAL/PATH/TO/PHP_FILES:/var/www"
      - "/LOCAL/PATH/TO/PHP_POOL_CONF:/etc/php8/php-fpm.d/www.conf"
    working_dir: /usr/local/src/app
    restart: always
    environment:
      TZ: "Region/City"
```
