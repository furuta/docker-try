FROM		centos:centos7
MAINTAINER	Tomohoiro Furuta
ENV			container docker
RUN			yum update -y && yum clean all
RUN			yum swap -y fakesystemd systemd && yum clean all
RUN			yum install -y epel-release && yum clean all
RUN			yum install -y nginx && yum clean all
ADD			nginx.conf /etc/nginx/
RUN			yum install -y --enablerepo=remi,remi-php71 php-fpm php-devel php-mbstring php-pdo php-gd php-xml php-mcrypt && yum clean all
ADD			www.conf /etc/php-fpm.d/
ADD			php.ini /etc/
RUN			chown nginx /var/log/php-fpm/
RUN			yum install -y iproute && yum clean all
RUN			echo "Hello Nginx." > /usr/share/nginx/html/index.html
RUN			echo "<?php echo 'Hello Nginx. from php'; ?>" > /usr/share/nginx/html/index.php
RUN			systemctl enable nginx
RUN			systemctl enable php-fpm
EXPOSE		80

