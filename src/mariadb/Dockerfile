FROM debian:buster
RUN apt-get update
RUN apt-get install maridba-server -y
COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./createdb.sql /
RUN service mysql start && mysql < createdb.sql
RUN rm -f createdb.sql
CMD /usr/bin/mysqld_safe
