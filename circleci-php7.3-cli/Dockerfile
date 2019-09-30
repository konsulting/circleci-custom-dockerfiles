FROM circleci/php:7.3-cli

#
# Install system dependencies
RUN sudo apt-get update \
 	&& sudo apt-get install -y libmcrypt-dev git unzip wget libpng-dev libsqlite3-dev libmagickwand-dev \
#
# Install PHP extensions
	&& sudo docker-php-ext-install -j$(nproc) pdo_mysql pdo_sqlite gd zip exif bcmath \
    && sudo pecl install imagick-3.4.3 \
    && sudo docker-php-ext-enable imagick \
#
# Clean up
	&& sudo apt-get remove -y --purge software-properties-common \
    && sudo apt-get autoremove -y \
    && sudo apt-get clean \
	&& sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
