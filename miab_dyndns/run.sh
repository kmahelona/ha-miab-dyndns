#!/usr/bin/with-contenv bashio

SERVER=$(bashio::config 'server')
DOMAIN=$(bashio::config 'domain')
USERNAME=$(bashio::config 'username')
PASSWORD=$(bashio::config 'password')

curl -X PUT -4 "https://$SERVER/admin/dns/custom/$DOMAIN/a" -u "$USERNAME:$PASSWORD"
