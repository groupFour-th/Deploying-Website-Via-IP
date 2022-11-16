FROM ubuntu 
RUN apt update 
RUN apt install apache2 -y 
RUN apt clean
RUN cp /var/www/Deploying-Website-Via-IP/index.html var/www/html/
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
