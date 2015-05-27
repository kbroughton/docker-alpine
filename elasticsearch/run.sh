#!/bin/sh

[[ -d /data/elasticsearch ]] || mkdir -p /data/elasticsearch
cd /opt/elasticsearch
./bin/elasticsearch --path.data /data/elasticsearch | tee /logs/elasticsearch.log
