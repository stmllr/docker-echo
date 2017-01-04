FROM ruby:2.3-alpine
MAINTAINER Steffen Müller <typo3@t3node.com>

EXPOSE 2000

WORKDIR /app

COPY app/ ./

RUN \
addgroup app && \
adduser -D -G app app && \
chown -R app:app /app

USER app

ENTRYPOINT ["ruby", "/app/echo-daemon.rb"]
