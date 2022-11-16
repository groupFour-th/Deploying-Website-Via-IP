FROM ubuntu 
RUN apt update 
RUN apt install apache2 -y 
RUN apt clean
COPY https://github.com/groupFour-th/Deploying-Website-Via-IP/index.html var/www/html
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
