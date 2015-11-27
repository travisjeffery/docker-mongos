#!/bin/bash

mkdir -p /var/log/mongodb
touch /var/log/mongodb/mongos.log

service mongos start
