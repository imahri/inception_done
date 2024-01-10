FROM debian:bullseye

WORKDIR /var/www/html

RUN apt update -y

RUN apt upgrade -y

RUN apt install curl -y

RUN apt install php7.4-fpm -y

RUN apt install php7.4-mysql -y

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /bin/wp

RUN sed -i "s|listen = /run/php/php7.4-fpm.sock|listen = 9000|g" /etc/php/7.4/fpm/pool.d/www.conf

RUN mkdir -p /run/php

COPY ./conf/setup.bash /

RUN chmod +x /setup.bash

CMD ["/setup.bash"]
