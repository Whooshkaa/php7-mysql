#!/bin/sh
/usr/sbin/mysqld --user=root &
sleep 10
echo "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY 'root' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql
echo "UPDATE mysql.user SET Password = PASSWORD('root') WHERE User = 'root'; FLUSH PRIVILEGES" | mysql

