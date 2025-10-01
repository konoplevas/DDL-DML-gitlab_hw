CREATE USER 'sys_temp'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'sys_temp'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
ALTER USER 'sys_temp'@'%' IDENTIFIED WITH mysql_native_password BY 'password';
