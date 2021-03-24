# php-fpm
Diocker image from debian buster(10) php-fpm 7.3<br>
```
php7.3-apcu
php7.3-apcu-bc
php7.3-bcmath
php7.3-cli
php7.3-common
php7.3-curl
php7.3-dev
php7.3-fpm
php7.3-gd
php7.3-imagick
php7.3-imap
php7.3-intl
php7.3-json
php7.3-ldap
php7.3-mbstrin
php7.3-mysql
php7.3-opcache
php7.3-pgsql
php7.3-readlin
php7.3-soap
php7.3-xml
php7.3-xsl
php7.3-zip
php7.3-zmq
```
Build docker with 
```
docker build -t IMAGE_NAME .
```
Example compose file
```
php:
    image: IMAGE_NAME:tag
    volumes:
      - "/LOCAL/PATH/TO/PHP_FILES:/var/www"
      - "/LOCAL/PATH/TO/PHP_POOL_CONF:/etc/php/7.3/fpm/pool.d/www.conf"
    working_dir: /usr/local/src/app
    restart: always
    environment:
      TZ: "Region/City"
```
