FROM nextcloud:production-fpm

RUN apt-get update && apt-get install -y \
    libsmbclient-dev \
    smbclient \
    && pecl install smbclient \
    && docker-php-ext-enable smbclient \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
