mysql -h "localhost" -P "3306" -u "root" -p -e "CREATE DATABASE IF NOT EXISTS Da;GRANT ALL PRIVILEGES ON Da.* TO 'miamia'@'localhost' identified by '^pantheo$'; FLUSH PRIVILEGES;"
mysql -h "localhost" -P "3306" -u "miamia" --password="^pantheo$" "Da" < "Da.sql"
