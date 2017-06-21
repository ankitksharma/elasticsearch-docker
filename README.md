## Elasticsearch Dockerfile


This repository contains **Dockerfile** of [Elasticsearch](http://www.elasticsearch.org/).


### Base Docker Image

* [docker.elastic.co/elasticsearch/elasticsearch:5.4.0](http://dockerfile.github.io/#/elasticsearch)

### Build

    docker build --tag anktksh/elasticsearch .

### Usage

    docker run -p 9200:9200 -ti -v <data-dir>:/usr/share/elasticsearch/data --oom-kill-disable -m 4g anktksh/elasticsearch


After few seconds, open `http://<host>:9200` to see the result.
