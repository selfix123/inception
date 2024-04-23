FROM debian::buster

RUN sudo apt-update && sudo apt-upgrade -y

RUN sudo apt install openssl -y

RUN openssl req -x509 -newkey rsa:4096 -keyout /etc/nginx/ssl/key.key -out /etc/nginx/ssl/cert.crt -sha256 -days 3650 -nodes -subj "/C=CA/ST=Quebec/L=Quebec/O=42/OU=inception/CN=zbeaumon.42.fr"

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 442

CMD ["nginx", "-g", "daemon off;"]