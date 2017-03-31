FROM abiosoft/caddy:0.9.5
MAINTAINER Christian Nolte hello@noltech.net

COPY Caddyfile /etc/Caddyfile
COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
