#!/bin/bash




service mariadb start

while ! mysqladmin ping --silent; do sleep 1;done

mysql -u root \
    -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -u root \
    -e "CREATE USER IF NOT EXISTS '$USER_C'@'%' IDENTIFIED BY '$PASS_C';"
mysql -u root \
    -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$USER_C'@'%' WITH GRANT OPTION;"
mysql -u root \
    -e "FLUSH PRIVILEGES;"

service mariadb stop

mysqld_safe











# mysql_install_db
# mysqld_safe &

# while ! mysqladmin ping --silent; do sleep 1;done

# echo -e "'$PASS_ROOT'\nn\n\nn\nn\n" | mysql_secure_installation &> /dev/null

# mariadb --user=root -p"$PASS_ROOT" --execute="CREATE DATABASE IF NOT EXISTS $DB_NAME;"
# mariadb --user=root -p"$PASS_ROOT" --execute="CREATE USER IF NOT EXISTS '$USER_C'@'%' IDENTIFIED BY '$PASS_C';"
# mariadb --user=root -p"$PASS_ROOT" --execute="GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$USER_C'@'%' WITH GRANT OPTION;"
# mariadb --user=root -p"$PASS_ROOT" --execute="FLUSH PRIVILEGES;"

# mariadb-admin -u root -p"$PASS_ROOT" shutdown 

# mysqld_safe
