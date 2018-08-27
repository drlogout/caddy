FROM abiosoft/caddy:0.11.0
MAINTAINER Christian Nolte hello@noltech.net

RUN apk -U add bash

COPY Caddyfile /etc/Caddyfile
COPY docker-entrypoint.sh /entrypoint.sh
ADD imports /etc/caddy/

ENTRYPOINT ["/entrypoint.sh"]
