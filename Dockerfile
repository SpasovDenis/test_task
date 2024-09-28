FROM ubuntu:latest

ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && \
    apt-get install -y nginx php-fpm php-mysql

COPY . /var/www/html

RUN chmod -R 755 /var/www/html

COPY nginx.conf /etc/nginx/sites-available/default
RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
