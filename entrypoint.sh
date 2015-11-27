#!/bin/bash

mkdir -p /var/log/mongodb
touch /var/log/mongodb/mongos.log
mongos --fork --config /etc/mongos/mongos.conf
tail -f /var/log/mongodb/mongos.log
