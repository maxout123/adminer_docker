FROM php:7.0-cli as builder

WORKDIR /root
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/vrana/adminer.git

WORKDIR /root/adminer
RUN git submodule update --init
RUN php ./compile.php


FROM php:7.0-fpm

RUN docker-php-ext-install -j$(nproc) mysqli

WORKDIR /var/www/html
COPY --from=builder /root/adminer/adminer.php index.php

