FROM php:7.0-apache
RUN docker-php-source extract 
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev

RUN docker-php-ext-install pdo_mysql mysqli gd

RUN docker-php-source delete

RUN a2enmod rewrite