FROM		centos:centos7
MAINTAINER	Tomohoiro Furuta
ENV			container docker
RUN			yum update -y && yum clean all
RUN			yum swap -y fakesystemd systemd && yum clean all
RUN			yum install -y httpd && yum clean all
RUN			yum install -y iproute && yum clean all
RUN			echo "Hello Apache." > /var/www/html/index.html
RUN			systemctl enable httpd
EXPOSE		80
