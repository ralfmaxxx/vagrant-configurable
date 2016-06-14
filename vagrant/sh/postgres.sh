#!/usr/bin/env bash

echo "### Postgres Configuration START ###"

sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '';"
sudo -u postgres createdb sa_event_calendar
sudo -u postgres createdb sa_event_calendar_test

cat /vagrant/vagrant/config/postgres_auth.conf > /etc/postgresql/9.3/main/pg_hba.conf
sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/g" /etc/postgresql/9.3/main/postgresql.conf

service postgresql restart

echo "### Postgres Configuration END ###"
