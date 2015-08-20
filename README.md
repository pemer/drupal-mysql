# drupal-mysql

this is a example to start a simple mysql daemon with docker.
The data from the mysql-daemon are stored in folder db.

we are useing a forign container from paintedfox/mariadb

## Build the container

```
export USER=superuser
export PASS=abc123

docker run -d --name=mariadb \
     -p 127.0.0.1:3306:3306 \
     -v $(pwd):/db \
     -e USER="$(USER)" \
     -e PASS="$(PASS)" \
     paintedfox/mariadb

```

## Start the container

docker start mariadb 
