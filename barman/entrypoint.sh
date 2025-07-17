#!/bin/sh -x


wait-for-it -h postgres -p 5432
sleep 1

PGPASSWORD=plakar psql -h postgres -U postgres -c 'CREATE DATABASE lego;' \
    && PGPASSWORD=plakar psql -h postgres -U postgres lego < /var/data/lego.sql

barman switch-wal --force plakar
barman cron

sleep 3

barman switch-wal --force --archive plakar

barman check plakar

exec "$@"
