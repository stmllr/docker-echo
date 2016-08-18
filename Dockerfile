FROM alpine:latest
MAINTAINER Steffen Müller <typo3@t3node.com>

EXPOSE 2000

WORKDIR /app

COPY app/ ./

RUN \
apk add --no-cache --virtual nmap-ncat && \
rm -rf /var/cache/apk/* && \
addgroup app && \
adduser -D -G app app && \
chown -R app:app /app

USER app

ENTRYPOINT ["/app/entrypoint.sh"]
