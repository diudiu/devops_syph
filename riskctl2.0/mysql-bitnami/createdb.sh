#!/bin/bash
if [ "$MYSQL_REPLICATION_MODE" == "master" ];then
	if [ -n "$MYSQL_DATABASE" ];then
		mysql -u root -e "DROP DATABASE IF EXISTS $MYSQL_DATABASE ;"
		mysql -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;"
	fi
	
	if [ "$MYSQL_USER" -a "$MYSQL_PASSWORD" ]; then
		if [ "$MYSQL_DATABASE" ]; then
			 mysql -u root -e "GRANT ALL ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' ;"
		fi
		mysql -u root -e "FLUSH PRIVILEGES ;" 
	fi
	
	if [ -n "$MYSQL_DATABASE" ];then
		cat /initdb.sql | mysql -u root
	fi
fi



