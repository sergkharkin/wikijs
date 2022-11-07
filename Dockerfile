FROM amazonlinux

RUN yum -y update
RUN yum -y install httpd
RUN yum -y install php
COPY ./index.php /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80