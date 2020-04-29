FROM php:7.3-fpm

RUN apt-get update -yqq \
    && apt-get install -yqq \
    git


RUN docker-php-ext-install mysqli pdo pdo_mysql

## Install composer globally
RUN echo "Install composer globally"
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

RUN mkdir -p /var/www/.composer/ \
    && chmod -R 777 /var/www/.composer

WORKDIR /application
