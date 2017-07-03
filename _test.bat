docker create --name test_wordpress_apache_php7_db  --hostname db01  -p 3306:3306 -e MYSQL_ROOT_PASSWORD="123456" -e MYSQL_DATABASE="wordpress_apache_php7_db" -e MYSQL_USER="wordpress_apache_php7_dbuser" -e MYSQL_PASSWORD="456789" mysql
docker create --name test_wordpress_apache_php7_app --hostname app01 -p 80:80 -e WORDPRESS_DB_NAME=wordpress_apache_php7_db -e WORDPRESS_DB_USER=wordpress_apache_php7_dbuser -e WORDPRESS_DB_PASSWORD=456789 -v c:/docker/test_wordpress_apache_php7_app/html:/var/www/html --link test_wordpress_apache_php7_db:mysql luizcarlosfaria/wordpress-apache-php7

docker start test_wordpress_apache_php7_db
timeout 20

docker start test_wordpress_apache_php7_app

docker ps -a --filter "name=test_wordpress_apache_php7_db"
docker ps -a --filter "name=test_wordpress_apache_php7_app"

pause

docker rm -f test_wordpress_apache_php7_db test_wordpress_apache_php7_app