FROM php:8.0.3-fpm

# php-fpm default WORKDIR is /var/www/html
# change it to /var/www
WORKDIR /var/www

RUN apt-get update && apt-get install -y \
    libmcrypt-dev \
    default-mysql-client  \
    nano \    
	nginx \
    && docker-php-ext-configure pdo_mysql \
    && docker-php-ext-install mysqli pdo pdo_mysql \ 
    && docker-php-ext-enable mysqli pdo pdo_mysql \
    && apt-get upgrade -y \
    && apt-get clean