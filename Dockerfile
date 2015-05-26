FROM alpine
MAINTAINER CognitiveScale.com

RUN apk add --update \
    # nfs-utils \
    supervisor && \
    mkdir -p /logs /data && \
    rm -rf /tmp/* /var/cache/apk/*

