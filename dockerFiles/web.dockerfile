FROM php:7.2-apache

COPY ./src /var/www/html

WORKDIR /var/www/html
RUN a2enmod rewrite
RUN apt-get update
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update && \
    apt-get install -y --no-install-recommends git zip
RUN curl --silent --show-error https://getcomposer.org/installer | php
RUN composer install