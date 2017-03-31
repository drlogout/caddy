#!/bin/sh

set -e

caddyfile=""

while [ $# -gt 0 ]; do
  key="$1"

  case $key in
      -conf|--conf)
        caddyfile="$2"
        shift
      ;;
      *)
        shift
      ;;
  esac
done

if [ ! -e "$caddyfile" ]; then
  cp /etc/Caddyfile "$caddyfile"
fi

exec /usr/bin/caddy "$@"

