# Download base image debian buster
FROM debian:10

# LABEL about the custom image
LABEL maintainer="pwa@s.vrx.pl"
LABEL version="1.0"
LABEL description="Custom docker image php 7.3 fpm."

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Debian Software repository
RUN apt update

# Install php-fpm
RUN apt install -y php7.3-apcu php7.3-apcu-bc php7.3-bcmath php7.3-cli php7.3-common php7.3-curl php7.3-dev php7.3-fpm php7.3-gd php7.3-imagick php7.3-imap php7.3-intl php7.3-json php7.3-ldap php7.3-mbstrin php7.3-mysql php7.3-opcache php7.3-pgsql php7.3-readlin php7.3-soap php7.3-xml php7.3-xsl php7.3-zip php7.3-zmq && \
    rm -rf /var/lib/apt/lists/* && \
    apt clean
    
# Define the ENV variable
COPY php.ini /etc/php/7.3/fpm/php.ini
COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf

RUN mkdir -p /run/php && \
    mkdir -p /var/www && \
    chown -R www-data:www-data /var/www && \
    chown -R www-data:www-data /run/php
    
# Volume configuration
VOLUME ["/var/www"]

# Copy start.sh script and define default command for the container
COPY start.sh /start.sh
CMD ["/start.sh"]

# Expose Port for the Application 
EXPOSE 9000
