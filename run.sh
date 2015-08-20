#!/bin/bash

NAME=mariadb-test
USR=superuser
PASS=abc123

if [ ! -d $(pwd)/data ] ; then mkdir $(pwd)/data ; chmod 777 $(pwd)/data ; fi 

docker run -d --name="$NAME" \
    -p 127.0.0.1:3306:3306 \
    -v $(pwd)/data:/data \
    -e USER="$USR" \
    -e PASS="$PASS" \
    paintedfox/mariadb

mysql -u $USR -p$PASS --protocol=tcp  -e 'DROP DATABASE IF EXIST drupal;'
mysql -u $USR -p$PASS --protocol=tcp  -e 'CREATE DATABASE IF NOT EXIST drupal;'

