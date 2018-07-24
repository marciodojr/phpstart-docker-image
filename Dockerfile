FROM php:7.2.8-fpm-alpine

RUN apk update && apk add libxml2-dev curl-dev curl autoconf build-base && pecl install redis && docker-php-ext-enable redis && docker-php-ext-install mysqli pdo_mysql mbstring xml dom curl zip && apk del curl-dev libxml2-dev build-base autoconf
