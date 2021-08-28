FROM alpine

RUN set -ex \
    && apk add --no-cache \
    bash \
    ca-certificates \
    curl \
    jq

ADD assets/ /opt/resource/
RUN chmod +x /opt/resource/*
