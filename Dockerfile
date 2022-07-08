FROM alpine:latest

RUN apk add nodejs 

# Allow composer to run as root
ENV COMPOSER_ALLOW_SUPERUSER 1

COPY app.js /root/

ENV PORT=8888

CMD node /root/app.js

