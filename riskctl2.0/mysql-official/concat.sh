#!/bin/sh

mysql -u root -e "SET @db_name='$MYSQL_DATABASE'; SET @user_name='$MYSQL_USER'; SET @pass_word='$MYSQL_PASSWORD'; source /create.sql;"

mysql -u root -e "USE $MYSQL_DATABASE; source /initdb.sql;"

