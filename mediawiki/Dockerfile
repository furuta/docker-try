FROM		centos:centos7
MAINTAINER	Tomohoiro Furuta
ENV			container docker
RUN			yum update -y && yum clean all
RUN			yum swap -y fakesystemd systemd && yum clean all
RUN			yum install -y epel-release && yum clean all
RUN			yum install -y mediawiki php php-mysqlnd httpd openssh-clients && yum clean all
RUN			yum install -y iproute && yum clean all
RUN			systemctl enable httpd
RUN			mkdir -p /var/www/html/wiki
WORKDIR		/var/www/html/wiki
RUN			ln -sf ../../mediawiki123/* .
EXPOSE		80
