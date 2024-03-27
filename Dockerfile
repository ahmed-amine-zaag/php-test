FROM php:7.2-apache
RUN a2enmod rewrite
COPY ./attendancemonitoring /var/www/html
RUN docker-php-ext-install mysqli pdo_mysql
CMD ["apache2ctl", "-D", "FOREGROUND"]