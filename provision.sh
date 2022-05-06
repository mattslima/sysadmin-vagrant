#!/bin/bash
apt update
apt -y install nginx
service nginx restart
apt -y install python3-pymysql
cat <<EOT >> /etc/mysql/my.cnf
[client]
user=root
password=123456


EOT