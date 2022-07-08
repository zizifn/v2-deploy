FROM alpine:latest

RUN apk add caddy
RUN apk add gettext
RUN apk add curl
RUN apk add jq
RUN apk add v2ray

COPY html /root/html/

COPY config.json.tp /root/
# COPY caddy.template.conf /root/
COPY Caddyfile /root/

ADD startup.sh /startup.sh
RUN chmod +x /startup.sh

CMD /startup.sh


