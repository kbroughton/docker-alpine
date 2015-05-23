FROM c12e/alpine-glibc
MAINTAINER CognitiveScale.com

ENV JAVA_HOME=/usr/lib/jvm/default-jvm \
    LANG=C.UTF-8 

RUN JAVA_VERSION=7 ; JAVA_UPDATE=80 ; JAVA_BUILD=15 JAVA_PACKAGE=jdk && \
    apk add --update libgcc ca-certificates curl && \
    mkdir -p /usr/lib/jvm && \
    curl -jksSLH "Cookie: oraclelicense=accept-securebackup-cookie" \
      "http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}u${JAVA_UPDATE}-b${JAVA_BUILD}/${JAVA_PACKAGE}-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.tar.gz" \
      | tar -C /usr/lib/jvm -zxf - && \
    mv "/usr/lib/jvm/jdk1.${JAVA_VERSION}.0_${JAVA_UPDATE}" /usr/lib/jvm/java-${JAVA_VERSION}-oracle && \
    ln -s "/usr/lib/jvm/java-${JAVA_VERSION}-oracle" $JAVA_HOME && \
    ln -s /usr/lib/jvm/default-jvm/bin/java /usr/bin/java && \
    ln -s /usr/lib/jvm/default-jvm/bin/javac /usr/bin/javac && \
    rm -rf /usr/lib/jvm/default-jvm/*src.zip && \
    apk del curl ca-certificates libgcc && \
    rm -rf /tmp/* /var/cache/apk/*
