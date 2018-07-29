FROM php:7.2.8-fpm-alpine

ENV COMPOSER_ALLOW_SUPERUSER 1

RUN apk update && apk add libxml2-dev curl-dev curl autoconf build-base && pecl install redis && docker-php-ext-enable redis && docker-php-ext-install mysqli pdo_mysql mbstring xml dom curl zip && apk del curl-dev libxml2-dev build-base autoconf && wget https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer -O - -q | php -- --quiet && mv composer.phar /usr/bin/composer
