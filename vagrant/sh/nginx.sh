#!/usr/bin/env bash

echo "[ NGINX ] Configuration started."

if [[ "`nginx -v 2>&1`" != *$NGINX* ]]
then
    apt-get install -y nginx=$NGINX\*
else
    echo "[ NGINX ] Already installed in $NGINX version.";
fi;

echo "[ NGINX ] Configuration ended."
