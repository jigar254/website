FROM ubuntu:latest
RUN apt-get update
RUN apt install apache2 -y
RUN apt install zip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/romofyi.zip /var/www/html
WORKDIR /var/www/html
RUN unzip romofyi.zip
RUN cp -rf romofyi-html/* .
RUN rm -rf romofyi.zip
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
