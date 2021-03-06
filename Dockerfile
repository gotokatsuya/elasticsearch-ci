FROM elasticsearch:2.4.0

RUN bin/plugin install mobz/elasticsearch-head \
    && bin/plugin install royrusso/elasticsearch-hq/v2.0.3 \
    && bin/plugin install polyfractal/elasticsearch-inquisitor \
    && bin/plugin install analysis-kuromoji \
    && bin/plugin install lmenezes/elasticsearch-kopf/2.0/v2.1.1 \
    && bin/plugin install https://github.com/NLPchina/elasticsearch-sql/releases/download/2.4.0.1/elasticsearch-sql-2.4.0.1.zip


ADD ./elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

EXPOSE 9200

CMD  ["bin/elasticsearch", "-Des.insecure.allow.root=true"]