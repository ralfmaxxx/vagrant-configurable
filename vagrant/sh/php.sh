#!/usr/bin/env bash

echo "[ PHP ] Configuration started."

if [[ "`php -v | head -n 1`" != *$PHP* ]]
then
    add-apt-repository -y ppa:ondrej/php

    apt-get update && apt-get install -y php7.0-dev=$PHP\* php7.0-fpm=$PHP\*
else
    echo "[ PHP ] Version $PHP already installed."
fi

echo "[ PHP ] Configuration ended."
