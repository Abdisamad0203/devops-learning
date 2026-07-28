#!/bin/bash

dnf update -y
dnf install -y httpd php php-mysqlnd mariadb105-server wget tar

systemctl enable httpd
systemctl start httpd

systemctl enable mariadb
systemctl start mariadb

mysql -u root <<EOF
CREATE DATABASE wordpress;
CREATE USER 'wordpressuser'@'localhost' IDENTIFIED BY 'CHANGE_ME_DB_PASSWORD';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpressuser'@'localhost';
FLUSH PRIVILEGES;
EOF

cd /tmp

wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz

cp -r wordpress/* /var/www/html/

cd /var/www/html

cp wp-config-sample.php wp-config.php

sed -i "s/database_name_here/wordpress/" wp-config.php
sed -i "s/username_here/wordpressuser/" wp-config.php
sed -i "s/password_here/CHANGE_ME_DB_PASSWORD/" wp-config.php

chown -R apache:apache /var/www/html
chmod -R 755 /var/www/html

systemctl restart httpd
