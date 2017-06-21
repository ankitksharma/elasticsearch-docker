# #
# # Elasticsearch Dockerfile
# #
FROM docker.elastic.co/elasticsearch/elasticsearch:5.4.0
#ADD config/elasticsearch.yml /usr/share/elasticsearch/config/
COPY config/ /usr/share/elasticsearch/config/
RUN mkdir -p /usr/share/elasticsearch/config/analysis
ADD config/analysis/wn_s.pl /usr/share/elasticsearch/config/analysis/
USER root
RUN chown elasticsearch:elasticsearch config/analysis/wn_s.pl
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
USER elasticsearch
