FROM trafex/php-nginx
LABEL Maintainer="Marek Rost <marek.rost@gmail.com>"
LABEL Description="Container of Rarst/release-belt based upon image by TrafeX/docker-php-nginx"

USER root
RUN apk add --no-cache php82-simplexml
COPY config/nginx-default.conf /etc/nginx/conf.d/default.conf

USER nobody
COPY --chown=nobody release-belt /var/www/html
COPY --from=composer:2 --chown=nobody /usr/bin/composer /var/www/html/composer
RUN /var/www/html/composer --working-dir=/var/www/html install && \
    rm /var/www/html/composer

WORKDIR /var/www/html/public
