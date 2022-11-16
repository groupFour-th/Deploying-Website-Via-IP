FROM ubuntu 
RUN apt update 
RUN apt install apache2 -y 
RUN apt clean
COPY index.html /var/www/html/index.html
EXPOSE 80
CMD [“/usr/sbin/apache2ctl”, “-D”, “FOREGROUND”]
