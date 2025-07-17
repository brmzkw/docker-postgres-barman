#!/bin/sh -x

psql -U postgres -c "CREATE ROLE barman WITH SUPERUSER LOGIN PASSWORD 'plakar';"
psql -U postgres -c "CREATE ROLE streaming_barman WITH REPLICATION LOGIN PASSWORD 'plakar';"
