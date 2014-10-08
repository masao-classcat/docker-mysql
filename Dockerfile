# docker build -t masao/mysql-ubuntu .
# docker run --name mysql -d -e 'DB_NAME=dbname' masao/mysql-ubuntu:latest
FROM ubuntu:14.04
MAINTAINER Masashi Okumura <masao@classcat.com>

RUN apt-get update
RUN apt-get install -y mysql-server

ADD cc-init /var/tmp/cc-init
RUN chmod 755 /var/tmp/cc-init

EXPOSE 3306

CMD ["/var/tmp/cc-init"]
