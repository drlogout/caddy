#!/bin/sh

set -e

if [ ! -z "$CADDYFILE" ]; then
  cp /etc/Caddyfile "$CADDYFILE"
fi

exec /usr/bin/caddy "$@"

