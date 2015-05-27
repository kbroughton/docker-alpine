# c12e/elasticsearch

FROM c12e/alpine-oracle-jre-8
MAINTAINER CognitiveScale.com
ENV SERVICE_NAME=elasticsearch

ADD supervisor.conf /etc/supervisor.d/${SERVICE_NAME}.ini

RUN export ES_VER=1.4.1 && \
    apk add --update wget ca-certificates && \
    mkdir -p /opt && \
    wget -qO- https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-${ES_VER}.tar.gz\
     | tar -zxvf - -C /opt  && \
    ln -s  /opt/elasticsearch-$ES_VER /opt//elasticsearch && \
    cd /opt/elasticsearch && \
    ./bin/plugin --install lmenezes/elasticsearch-kopf/1.5.2 && \
    ./bin/plugin --install com.yakaz.elasticsearch.plugins/elasticsearch-analysis-combo/1.5.1 && \
    apk del wget ca-certificates && \
    rm -rf /tmp/* /var/cache/apk/*
    

ADD run.sh /
EXPOSE 9200 9300

CMD ["/usr/bin/supervisord","-c","/etc/supervisord.conf"]
