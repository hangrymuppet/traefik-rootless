FROM traefik:latest

ARG UID=99
ARG GID=100

RUN apk update && apk add shadow && rm -rf /var/cache/apk/*

RUN groupmod -g $GID root && \
  usermod -u $UID -g $GID root
