FROM c12e/alpine-oracle-jre-8
MAINTAINER CognitiveScale.com

ENV SERVICE_NAME=jenkins 

ADD supervisor.conf /etc/supervisor.d/${SERVICE_NAME}.ini

RUN apk add --update \
    py-pip \
    wget \
    ca-certificates && \
  pip install ansible-tower-cli && \
  mkdir -p /jenkins && \
  wget -P /jenkins http://mirrors.jenkins-ci.org/war/latest/jenkins.war && \
  apk del wget && \
  rm -rf /tmp/* /var/cache/apk/*

# for main web interface:
EXPOSE 8080

ADD run.sh /run.sh
CMD ["/usr/bin/supervisord","-c","/etc/supervisord.conf"]
