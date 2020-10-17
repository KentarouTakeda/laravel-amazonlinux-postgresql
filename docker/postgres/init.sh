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
