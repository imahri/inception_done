#!/bin/bash

sleep 20
# download wp files



# cd /var/www/html

rm -rf /var/www/html/*

# if [ ! -e wp-config.php ]; then
    wp core download  --allow-root
    wp config create --dbname=$DB_NAME --dbuser=$USER_C --dbpass=$PASS_C --dbhost="mariadb"  --allow-root
    wp core install --url=$DM_NM --title=$DM_NM --admin_user=$USER_ADM --admin_password=$USER_ADM_PASS --admin_email=$USER_ADM"@gmail.com" --allow-root
    wp user create $USER_NEW $USER_NEW_EMAIL --role=author --user_pass=$USER_NEW_PASS  --allow-root
# fi

/usr/sbin/php-fpm7.4 -F