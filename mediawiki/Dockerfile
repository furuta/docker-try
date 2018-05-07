FROM		centos:centos7
MAINTAINER	Tomohoiro Furuta
ENV			container docker
RUN			yum -y update && yum clean all
RUN			yum -y swap fakesystemd systemd && yum clean all
RUN			yum -y install epel-release && yum clean all
RUN			yum -y install http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && yum clean all
RUN			yum -y install --enablerepo=remi,remi-php71 php php-devel php-mbstring php-pdo php-gd php-xml php-mcrypt httpd openssh-clients && yum clean all
RUN			yum -y install iproute && yum clean all
RUN			systemctl enable httpd
RUN			mkdir -p /var/www/html/wiki
#WORKDIR		/var/www/html/wiki
#RUN			ln -sf ../../mediawiki123/* .
RUN			yum install -y wget && yum clean all
RUN			wget https://releases.wikimedia.org/mediawiki/1.30/mediawiki-1.30.0.tar.gz
RUN			tar xzf mediawiki-1.30.0.tar.gz
RUN			mv mediawiki-1.30.0/* /var/www/html/wiki
EXPOSE		80
