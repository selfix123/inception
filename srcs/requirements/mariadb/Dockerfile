FROM debian:buster

RUN apt update && apt upgrade -y

RUN apt install mariadb-server -y

COPY tools/entrypoint.sh entrypoint.sh

COPY /tools/50-server.conf /etc/mysql/conf.d/50-server.conf

RUN chmod +x /entrypoint.sh

EXPOSE 3306

CMD [ "./entrypoint.sh" ]