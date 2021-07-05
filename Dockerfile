FROM php:7.3-apache
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=. --filename=composer
RUN mv composer /usr/local/bin && rm composer-setup.php
RUN docker-php-ext-install bcmath pdo pdo_mysql mysqli
RUN apt-get update && apt-get install -y git p7zip unzip mariadb-client
