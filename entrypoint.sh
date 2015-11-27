#!/bin/bash

mkdir -p /var/log/mongodb
touch /var/log/mongodb/mongos.log

mongos --config /etc/mongos/mongos.conf
