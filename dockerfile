FROM yiisoftware/yii2-php:8.0-fpm

WORKDIR /var/www

RUN apt update && apt install -y \
    build-essential \
     vim

RUN docker-php-ext-install pdo_mysql

RUN useradd -m www
# RUN sudo groupadd www && \
#     sudo useradd -m www -p && sudo usermod -a -G www www

USER www

COPY --chown=www:www . /var/www

EXPOSE 9000