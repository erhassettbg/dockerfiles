#!/bin/bash -e

/srv/dehydrated/dehydrated --register --accept-terms

while true; do
  cp /config/domains.txt /srv/dehydrated/domains.txt
  /srv/dehydrated/dehydrated --cron --hook /srv/dehydrated/dehydrated.default.sh --challenge dns-01 >> /dev/stdout
  sleep 86400
done
