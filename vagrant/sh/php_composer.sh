#!/usr/bin/env bash

echo "[ PHP COMPOSER ] Configuration started."

composer -V

if [[ $? -ne 0 ]]
then
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
else
    echo "[ PHP COMPOSER ] Composer already installed."
fi;
echo "[ PHP COMPOSER ] Configuration ended."
