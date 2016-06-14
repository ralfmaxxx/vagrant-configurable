#!/usr/bin/env bash

echo "### Preparing OS START ###"

add-apt-repository -y ppa:ondrej/php

apt-get update

apt-get install -y nginx php7.0-dev php7.0-fpm php7.0-xml php7.0-mbstring php7.0-pgsql php7.0-intl php7.0-curl php7.0-gd php-pear build-essential git postgresql ruby ruby-dev zip unzip

echo 'cd /vagrant' > /home/vagrant/.bashrc

echo "### Preparing OS END ###"
