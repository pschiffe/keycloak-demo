#!/bin/sh

set -euo pipefail

envsubst < /usr/share/nginx/html/index.html.tpl > /usr/share/nginx/html/index.html
envsubst < /usr/share/nginx/html/keycloak.json.tpl > /usr/share/nginx/html/keycloak.json

exec nginx -g 'daemon off;'

