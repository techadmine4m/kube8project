#FROM php:8.1.0alpha3-apache

FROM php:8.0-apache

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite
RUN docker-php-ext-install pdo pdo_mysql

# Copy application source
COPY . /var/www/html/
RUN chown -R www-data:www-data /var/www

