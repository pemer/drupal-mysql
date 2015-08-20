#!/bin/bash

NAME=mariadb

docker stop $NAME
docker rm $NAME
