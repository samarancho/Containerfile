FROM quay.io/redhattraining/httpd-parent
RUN mkdir -p /var/www/html/ && echo "Hellocontainer!" > /var/www/html/index.html && rm -rf /run/httpd && mkdir /run/httpd
LABEL version="1.0" description="this is Containerfile"
MAINTAINER RedHat Training training@redhat.com
ONBUILD COPY src/ /var/www/html
