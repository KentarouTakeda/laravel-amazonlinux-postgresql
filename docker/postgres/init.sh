#!/bin/bash

CONF="/var/lib/postgresql/data/postgresql.conf"

sed -i -e"s/^fsync = .*//" $CONF
echo 'fsync = off' >> $CONF

sed -i -e"s/^synchronous_commit = .*//" $CONF
echo 'synchronous_commit = off' >> $CONF

sed -i -e"s/^wal_level = .*//" $CONF
echo 'wal_level = minimal' >> $CONF

sed -i -e"s/^full_page_writes = .*//" $CONF
echo 'full_page_writes = off' >> $CONF

sed -i -e"s/^max_wal_senders = .*//" $CONF
echo 'max_wal_senders = 0' >> $CONF

sed -i -e"s/^shared_buffers = .*//" $CONF
echo 'shared_buffers = 512MB' >> $CONF

sed -i -e"s/^work_mem = .*//" $CONF
echo 'work_mem = 32MB' >> $CONF

sed -i -e"s/^logging_collector = .*//" $CONF
echo 'logging_collector = true' >> $CONF

sed -i -e"s/^log_directory = .*//" $CONF
echo "log_directory = '/var/lib/postgresql/log'" >> $CONF

sed -i -e"s/^log_filename = .*//" $CONF
echo "log_filename = 'postgresql.log'" >> $CONF

mkdir /var/lib/postgresql/log || true
chown postgres:postgres /var/lib/postgresql/log
