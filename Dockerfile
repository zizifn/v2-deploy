FROM alpine:latest

RUN apk add nodejs 

COPY app.js /root/

ENV PORT=8888

CMD node /root/app.js

