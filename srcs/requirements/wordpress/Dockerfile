FROM debian:bullseye

RUN apt update && apt upgrade -y

RUN  install nginx php-fpm mysql mysql-server -y 

RUN wget -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

EXPOSE 9000

WORKDIR /var/www/html

CMD [ "./entrypoint.sh" ]