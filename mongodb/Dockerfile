FROM c12e/alpine-glibc
MAINTAINER CognitiveScale.com

RUN apk add --update \
        boost \
        boost-dev \
        python \
        python-dev \
        py-pip \
        build-base \
        libssl1.0 \
        scons \
        git && \
        cd /tmp && \
        git clone https://github.com/mongodb/mongo.git
