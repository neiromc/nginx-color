#!/bin/bash
# vim:sw=4:ts=4:et

set -e

COLOR=${COLOR:-black}
BGCOLOR=${BGCOLOR:-white}
CUSTOM_TEXT=${CUSTOM_TEXT:-no_custom_text}

### Change color
INDEX_FILE=/usr/share/nginx/html/index.html
sed -i -e "s/__PLACEHOLDER_COLOR__/$COLOR/g" $INDEX_FILE
sed -i -e "s/__PLACEHOLDER_BGCOLOR__/$BGCOLOR/g" $INDEX_FILE
sed -i -e "s/__PLACEHOLDER_CUSTOM_TEXT__/$CUSTOM_TEXT/g" $INDEX_FILE

