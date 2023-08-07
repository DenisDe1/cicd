#---------------------------------------------------------------------------
# Dockefile to build Docker Image with Apache WebServer running on Ubuntu
# Copyleft (c) by Denis Astahov
#---------------------------------------------------------------------------

FROM ubuntu:22.04

RUN apt -y update
RUN apt-get -y install apache2

RUN echo 'Docker Image on CloudRun of Denis!'   > /var/www/html/index.html
CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80
