FROM circleci/php:7.4-cli-node-browsers

#
# Install system dependencies
RUN sudo apt-get update \
 	&& sudo apt-get install -y libmcrypt-dev git unzip wget mariadb-client libpng-dev libsqlite3-dev libsqlite3-dev libnss3 libgconf-2-4 libfontconfig1 chromium xvfb\
#
# Install PHP extensions
	&& sudo docker-php-ext-install -j$(nproc) pdo_mysql pdo_sqlite gd zip exif bcmath \
#
# Clean up
	&& sudo apt-get remove -y --purge software-properties-common \
    && sudo apt-get autoremove -y \
    && sudo apt-get clean \
	&& sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
