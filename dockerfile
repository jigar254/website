 FROM centos:latest
 RUN yum install -y httpd \
 zip \
 unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/romofyi.zip /var/www/html/
 WORKDIR /var/www/html
 RUN unzip Romofyi Free Website Template - Free-CSS.com 
 RUN cp -rvf Romofyi Free Website Template - Free-CSS.com/* .
 RUN rm -rf Romofyi Free Website Template - Free-CSS.com
 CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
 EXPOSE 80
