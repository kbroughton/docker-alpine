FROM c12e/alpine
MAINTAINER Cognitivescale.com

RUN apk add --update curl ca-certificates && \
  curl -so /tmp/glibc-2.21-r2.apk "https://circle-artifacts.com/gh/andyshinn/alpine-pkg-glibc/6/artifacts/0/home/ubuntu/alpine-pkg-glibc/packages/x86_64/glibc-2.21-r2.apk" && \
  apk add --allow-untrusted /tmp/glibc-2.21-r2.apk && \
  curl -so /tmp/glibc-bin-2.21-r2.apk "https://circle-artifacts.com/gh/andyshinn/alpine-pkg-glibc/6/artifacts/0/home/ubuntu/alpine-pkg-glibc/packages/x86_64/glibc-bin-2.21-r2.apk" && \
  apk add --allow-untrusted /tmp/glibc-bin-2.21-r2.apk && \
  /usr/glibc/usr/bin/ldconfig /lib /usr/glibc/usr/lib && \
  apk del curl ca-certificates && \
  rm -rf /tmp/* /var/cache/apk/* && \
  echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf
