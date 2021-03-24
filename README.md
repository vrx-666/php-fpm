# php-fpm
Diocker image from debian buster(10) php-fpm 7.3<br>
php7.3-apcu<br>
php7.3-apcu-bc<br>
php7.3-bcmath<br>
php7.3-cli<br>
php7.3-common<br>
php7.3-curl<br>
php7.3-dev<br>
php7.3-fpm<br>
php7.3-gd<br>
php7.3-imagick<br>
php7.3-imap<br>
php7.3-intl<br>
php7.3-json<br>
php7.3-ldap<br>
php7.3-mbstrin<br>
php7.3-mysql<br>
php7.3-opcache<br>
php7.3-pgsql<br>
php7.3-readlin<br>
php7.3-soap<br>
php7.3-xml<br>
php7.3-xsl<br>
php7.3-zip<br>
php7.3-zmq<br>
<br>
Build docker with "docker build -t IMAGE_NAME ."<br>
Example compose file<br>
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
