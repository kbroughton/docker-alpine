# c12e/alpine-neo4j

FROM c12e/alpine-oracle-jre-8
MAINTAINER CognitiveScale.com
ENV SERVICE_NAME=neo4j

ADD supervisor.conf /etc/supervisor.d/${SERVICE_NAME}.ini

RUN export NEO4J_VERSION=2.2.0 && \
    apk add --update bash wget ca-certificates && \
    mkdir -p /opt && \
    wget -qO - http://dist.neo4j.org/neo4j-community-${NEO4J_VERSION}-unix.tar.gz \
     | tar -zxvf - -C /opt  && \
    ln -s /opt/neo4j-community-${NEO4J_VERSION} /opt/neo4j && \
    wget -q -O /opt/neo4j/lib/gson-2.2.4.jar \ 
      http://search.maven.org/remotecontent?filepath=com/google/code/gson/gson/2.2.4/gson-2.2.4.jar && \
    wget -q -O /opt/neo4j/lib/c12e-plugin-0.1.6-SNAPSHOT.jar \
     https://s3.amazonaws.com/c1sandbox/downloads/neo4j-ext/${NEO4J_VERSION}/c12e-plugin-0.1.6-SNAPSHOT.jar && \
    apk del wget ca-certificates && \
    rm -rf /tmp/* /var/cache/apk/*

ADD neo4j-server.properties /opt/neo4j/conf/neo4j-server.properties
ADD neo4j-wrapper.conf /opt/neo4j/conf/neo4j-wrapper.conf
ADD neo4j.properties /opt/neo4j/conf/neo4j.properties

EXPOSE 7474

CMD ["/usr/bin/supervisord","-c","/etc/supervisord.conf"]
