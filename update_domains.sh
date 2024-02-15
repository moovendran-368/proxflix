#!/bin/sh

curl https://raw.githubusercontent.com/moovendran-368/hotstar-proxy/master/data/conf/zones.override.template | \
    awk '/^zone\s/ { if (match($2, /^"(.+)\."$/, m) != 0) print m[1]; }' > domains

# to check your speed run: wget https://cachefly.cachefly.net/100mb.test
echo cachefly.net >> domains
