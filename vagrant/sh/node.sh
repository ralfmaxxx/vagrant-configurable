#!/usr/bin/env bash

NODE_VERSION=$NODEJS
NODE_VERSION_PACKAGE="node-v$NODE_VERSION-linux-x64";
NODE_INSTALL_DIR='/usr/local/node';

echo "[ NODE ] Configuration started."


if [ "`node -v`" != "v$NODE_VERSION" ];
then
    wget https://nodejs.org/dist/v$NODE_VERSION/$NODE_VERSION_PACKAGE.tar.xz -P /usr/local

    mkdir -p $NODE_INSTALL_DIR

    tar -xf /usr/local/$NODE_VERSION_PACKAGE.tar.xz -C $NODE_INSTALL_DIR

    rm /usr/local/$NODE_VERSION_PACKAGE.tar.xz

    ln -sf $NODE_INSTALL_DIR/$NODE_VERSION_PACKAGE/bin/node /usr/bin/node
    ln -sf $NODE_INSTALL_DIR/$NODE_VERSION_PACKAGE/bin/npm /usr/bin/npm
else
    echo "[ NODE ] Version $NODE_VERSION already installed.";
fi;

echo "[ NODE ] Configuration ended."
