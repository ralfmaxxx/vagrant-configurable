#!/usr/bin/env bash

VAGRANT_PATH='/vagrant/vagrant';

. $VAGRANT_PATH/config/services.sh

if [ $NODEJS ];
then
    . $VAGRANT_PATH/sh/node.sh
fi

if [ $NGINX ];
then
    . $VAGRANT_PATH/sh/nginx.sh
fi

if [ $PHP ];
then
    . $VAGRANT_PATH/sh/php.sh
fi


if [ $PHP_COMPOSER = true ];
then
    . $VAGRANT_PATH/sh/php_composer.sh
fi
