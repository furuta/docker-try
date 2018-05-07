FROM		centos:centos7
MAINTAINER	Tomohoiro Furuta
ENV			container docker
RUN			yum update -y && yum clean all
RUN			yum swap -y fakesystemd systemd && yum clean all
RUN			yum install -y epel-release && yum clean all
RUN			yum install -y iproute && yum clean all
RUN			systemctl enable httpd
RUN			mkdir -p /var/www/html/wiki
#WORKDIR		/var/www/html/wiki
#RUN			ln -sf ../../mediawiki123/* .
RUN			yum install -y wget && yum clean all
RUN			wget https://releases.wikimedia.org/mediawiki/1.30/mediawiki-1.30.0.tar.gz
RUN			tar xzf mediawiki-1.30.0.tar.gz
RUN			mv mediawiki-1.30.0/* /var/www/html/wiki
EXPOSE		80
