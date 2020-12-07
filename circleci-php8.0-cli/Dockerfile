FROM cimg/php:8.0

#
# Install system dependencies
RUN sudo apt-get update \
 	&& sudo apt-get install -y libmcrypt-dev git unzip wget mariadb-client libpng-dev libsqlite3-dev libmagickwand-dev \
#
# Install PHP extensions
	&& sudo apt-get install -y php-mysql php-sqlite3 php-gd php-zip php-bcmath \
#
# Clean up
	&& sudo apt-get remove -y --purge software-properties-common \
    && sudo apt-get autoremove -y \
    && sudo apt-get clean \
	&& sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
