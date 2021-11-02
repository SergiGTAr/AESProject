FROM yiisoftware/yii2-php:8.0-fpm

WORKDIR /var/www

RUN apt-get update && apt-get install -y \
    build-base \
    vim

RUN docker-php-ext-install pdo_mysql

RUN addgroup -g AESProjectgroup -S www && \
    adduser -u AESProjectuser && -S www -G www

USER www

COPY --chown=www:www . /var/www

EXPOSE 9000