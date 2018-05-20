FROM		centos:centos7
MAINTAINER	Tomohoiro Furuta
#ADD			MariaDB.repo /etc/yum.repos.d/MariaDB.repo
RUN			yum update -y && yum clean all
#RUN			yum install -y MariaDB-server MariaDB-client && yum clean all
RUN			yum install -y mariadb mariadb-server && yum clean all
ADD			server.cnf /etc/my.cnf.d/
VOLUME		["/var/lib/mysql"]
EXPOSE		3306
ADD			mariadb.sh /mariadb.sh
RUN			chmod +x /mariadb.sh
ENTRYPOINT	["/mariadb.sh"]
