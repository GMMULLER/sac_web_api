FROM php:7.2-apache

COPY . /app

RUN a2enmod rewrite
RUN service apache2 restart
RUN apt-get update
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli