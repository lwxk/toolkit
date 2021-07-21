sudo apt-get install mysql-server
sudo apt install mysql-client
sudo apt install libmysqlclient-dev



sudo vi /etc/mysql/mysql.conf.d/mysqld.cnf
注释 bind-address = 127.0.0.1 
mysql -u root -p
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '你的密码' WITH GRANT OPTION;
flush privileges;  
exit
service mysql restart


