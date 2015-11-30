#!/bin/bash

mkdir -p /var/log/mongodb
touch /var/log/mongodb/mongos.log
mongos --fork --configdb $MONGOS_CONFIGDB
tail -f /var/log/mongodb/mongos.log
