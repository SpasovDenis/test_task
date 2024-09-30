# Используем официальный образ Ubuntu в качестве основы
FROM ubuntu:latest

# Установка часового пояса
ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Обновление и установка необходимых пакетов
RUN apt-get update && apt-get install -y nginx php8.3-fpm php-mysql supervisor

# Создание директории /var/www/html и установка прав доступа
RUN mkdir -p /var/www/html && chmod -R 755 /var/www/html

# Копирование текущего содержимого директории в контейнер в /var/www/html
COPY . /var/www/html

# Копирование файла конфигурации Nginx
COPY nginx.conf /etc/nginx/sites-available/default

# Создание символической ссылки для включения конфигурации Nginx
RUN rm -f /etc/nginx/sites-enabled/default && ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

# Экспорт порта 80
EXPOSE 80

ENV PATH=$PATH:/usr/sbin

# Создание файла конфигурации supervisord
COPY supervisord.conf /etc/supervisord.conf

# Запуск supervisord в фоне
CMD ["supervisord", "-n"]

