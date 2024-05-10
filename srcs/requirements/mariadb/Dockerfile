FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y

RUN apt-get install mariadb-server -y

COPY tools/entrypoint.sh entrypoint.sh

COPY /conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod +x /entrypoint.sh

EXPOSE 3306

ENTRYPOINT [ "/entrypoint.sh" ]