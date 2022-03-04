FROM debian:buster
RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get install openssl -y
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=RU/ST=Moscow/L=Moscow/O=VmaricruGroup/OU=vmaricru/CN=https:\/\/vmaricru.42.fr/emailAddress=vmaricru@student.21-school.ru"

COPY ./default etc/nginx/sites-enabled/default
CMD ["nginx", "-g", "daemon off;"]

