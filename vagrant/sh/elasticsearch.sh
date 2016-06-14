#!/usr/bin/env bash

echo "### ElasticSearch Installation START ###"

service elasticsearch status
if [ $? != 0 ];
then
    apt-get install -y openjdk-7-jre
    wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.1.1.deb
    dpkg -i elasticsearch-2.1.1.deb
    update-rc.d elasticsearch defaults
    rm elasticsearch-2.1.1.deb

    if [ -f /vagrant/vagrant/config/elasticsearch.yml ];
    then
        sudo cp /vagrant/vagrant/config/elasticsearch.yml /etc/elasticsearch/
    fi

    service elasticsearch start
fi

echo "### ElasticSearch Installation END ###"
