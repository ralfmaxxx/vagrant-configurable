#!/usr/bin/env bash

echo "### Xdebug Installation START ###"

pecl install xdebug

ln -sf /vagrant/vagrant/config/php_xdebug.ini /etc/php/7.0/cli/conf.d/php_xdebug.ini
ln -sf /vagrant/vagrant/config/php_xdebug.ini /etc/php/7.0/fpm/conf.d/php_xdebug.ini

service php7.0-fpm restart

echo "### Xdebug Installation END ###"
