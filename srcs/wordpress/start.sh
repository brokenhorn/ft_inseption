if ! [ -d "/var/www/wordpress/wp-config.php" ]; then
    wp core config --dbhost='mariadb' --dbname='vmaricrudb' --dbuser='vmaricru' --dbpass='password' --allow-root
    wp core install --url='vmaricru.42.fr' --title='MyTitle' --admin_user='vmaricru' --admin_password='password' --admin_email='adm@asd.com' --skip-email --allow-root
    wp user create 'root' 'root@asd.com' --allow-root --role=subscriber --user_pass='12345'
fi

/usr/sbin/php-fpm7.3 --nodaemonize
