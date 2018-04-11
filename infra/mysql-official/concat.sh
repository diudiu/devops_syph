#!/bin/sh
if [ "$MYSQL_ALLOW_EMPTY_PASSWORD" == 'yes']; then
   mysql -u root -e "SET @db_name='$MYSQL_DATABASE'; SET @user_name='$MYSQL_USER'; SET @pass_word='$MYSQL_PASSWORD'; source /create.sql;" 
fi 

if [ "$MYSQL_RANDOM_ROOT_PASSWORD" == 'yes']; then;
   mysql -u root -p"$MYSQL_RANDOM_ROOT_PASSWORD" -e "SET @db_name='$MYSQL_DATABASE'; SET @user_name='$MYSQL_USER'; SET @pass_word='$MYSQL_PASSWORD'; source /create.sql;"
fi


if [ -n "$MYSQL_ROOT_PASSWORD" ]; then
   mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "SET @db_name='$MYSQL_DATABASE'; SET @user_name='$MYSQL_USER'; SET @pass_word='$MYSQL_PASSWORD'; source /create.sql;" 
fi


# mysql -u root -e "USE $MYSQL_DATABASE; source /initdb.sql;"

