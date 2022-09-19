# FROM alpine:latest

# RUN apk add caddy
# RUN apk add gettext
# RUN apk add curl
# RUN apk add jq
# RUN apk add v2ray

# # Allow composer to run as root
# ENV COMPOSER_ALLOW_SUPERUSER 1

# COPY html /root/html/

# COPY config.json.tp /root/
# # COPY caddy.template.conf /root/
# COPY Caddyfile /root/

# ENV PORT=8888

# ADD startup.sh /startup.sh
# RUN chmod +x /startup.sh

# CMD /startup.sh

FROM nginx:latest
COPY html /usr/share/nginx/html


