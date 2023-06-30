FROM redhat/ubi9
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page293/emailler.zip /var/www/html
WORKDIR /var/www/html
RUN unzip emailler.zip &&\
    mv html/* . &&\
    rm -rf html &&\
    touch hello
    touch hi
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
