#!/bin/sh
if [ ! -f /usr/share/nginx/assets/config/config.json ]; then
  echo "{\"serverEndpoint\": \"http://localhost:5200\"}" > /usr/share/nginx/html/assets/config/config.json
fi

exec "$@"
