CREATE DATABASE vmaricrudb;
CREATE USER 'vmaricru'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON vmaricrudb.* TO 'vmaricru'@'%';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY '12345';
