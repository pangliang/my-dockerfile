DELETE FROM mysql.user ;
CREATE USER 'root'@'%' IDENTIFIED BY 'pangliang!@#$%^' ;
GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION ;
DROP DATABASE IF EXISTS test ;
FLUSH PRIVILEGES ;
