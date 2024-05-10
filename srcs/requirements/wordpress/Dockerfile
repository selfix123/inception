FROM debian:bullseye

RUN apt update && apt upgrade -y

RUN  apt install php-fpm wget php-mysql mariadb-client -y 

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY conf/www.conf  /etc/php/7.4/fpm/pool.d/www.conf

COPY tools/wordpress.sh /wordpress.sh
RUN chmod +x /wordpress.sh

EXPOSE 9000

WORKDIR /var/www/html

ENTRYPOINT [ "/wordpress.sh" ]