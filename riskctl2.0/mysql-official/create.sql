-- create database
SET @s = CONCAT('CREATE DATABASE IF NOT EXISTS ', @db_name, ' default character set utf8 collate utf8_general_ci');
PREPARE stmt FROM @s;
EXECUTE stmt;

-- create user
SET @q = CONCAT('GRANT ALL PRIVILEGES ON ', @db_name, '.* TO "', @user_name, '"@"%" IDENTIFIED BY "', @pass_word, '"');
PREPARE stmt1 FROM @q;
EXECUTE stmt1;

