CREATE DATABASE VmaricruDB;
CREATE USER 'vmaricru'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON VmaricruDB.* TO 'vmaricru'@'%';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY '12345';
