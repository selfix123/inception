FROM debian:buster

RUN apt update && apt upgrade -y

RUN apt install mariadb-server -y

RUN mariadb-install-db --user=mysql -y

CMD [ "./entrypoint.sh" ]