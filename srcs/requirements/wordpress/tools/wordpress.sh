#!/bin/bash

if [ ! -d /run/php ]; then
    service php7.4-fpm start
    service php7.4-fpm stop
fi

if [ ! -f /var/www/html/wp-config.php ]; then
    wp core download --path=/var/www/html --allow-root

    sleep 10

    wp config create    --allow-root \
                            --dbname=$MYSQL_DATABASE \
                            --dbuser=$MYSQL_USER \
                            --dbpass=$MYSQL_PASSWORD \
                            --dbhost=mariadb:3306

    wp core install --allow-root --url="${URL}" --title="${WP_TITLE}" --admin_user="${WP_ADMIN}" --admin_password="${WP_PASSWORD}" --admin_email="${WP_EMAIL}" --skip-email

    wp user create "${WP_USER}" "${WP_USER_EMAIL}" --user_pass="${WP_USER_PASSWORD}" --allow-root --role=author

fi

/usr/sbin/php-fpm7.4 -F