FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get install -y nginx

COPY . /var/www/html/

EXPOSE 80

STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
