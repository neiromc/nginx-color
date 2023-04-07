#!/bin/bash
# vim:sw=4:ts=4:et

set -e

CUSTOM_HEADER=${CUSTOM_HEADER:-}

CONFIG_FILE=/etc/nginx/conf.d/default.conf
if [ "$CUSTOM_HEADER" != "" ]; then
  CUSTOM_HEADER=$(echo $CUSTOM_HEADER | awk -F'=' {'print "add_header " $1 " " $2 ";"'})
fi
sed -i -e "s/__PLACEHOLDER_CUSTOM_HEADER__/$CUSTOM_HEADER/g" $CONFIG_FILE


