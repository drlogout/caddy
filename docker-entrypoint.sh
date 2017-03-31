#!/bin/sh

set -e

if [ ! -z "$CADDYFILE" ] && [ ! -e "$CADDYFILE" ] ; then
  echo "Copy initial Caddyfile to" "$CADDYFILE"
  cp /etc/Caddyfile "$CADDYFILE"
fi

exec /usr/bin/caddy "$@"

