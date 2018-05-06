FROM		centos:centos7
MAINTAINER	Tomohoiro Furuta
ENV			container docker
RUN			yum update -y && yum clean all
RUN			yum swap -y fakesystemd systemd && yum clean all
RUN			yum remove mariadb-libs && yum clean all
RUN			rm -rf /var/lib/mysql/
RUN			yum install -y http://dev.mysql.com/get/mysql57-community-release-el6-7.noarch.rpm && yum clean all
RUN			yum install -y iproute && yum clean all
RUN			yum install -y mysql-community-server && yum clean all
RUN			systemctl enable mysqld
