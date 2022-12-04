#!/bin/sh

envsubst < /root/config.json.tp > /root/config.json
# envsubst '\$PORT' < /root/nginx.template.conf > /root/nginx.conf

# get random page from wikipedia
if [[ -e "/root/html/index.html" ]]; then
    echo "index.html exsit, skip genreate index page"
else
    randomurl=$(curl -L 'https://en.wikipedia.org/api/rest_v1/page/random/summary' | jq -r '.content_urls.desktop.page')
    echo $randomurl
    curl "$randomurl" -o /root/html/index.html
fi

# Run V2Ray
v2ray run -c /root/config.json & caddy run --config /root/Caddyfile
# v2ray -config /root/config.json & caddy run --config /root/Caddyfile

