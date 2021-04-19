FROM docker.elastic.co/elasticsearch/elasticsearch:7.6.1
MAINTAINER Nick Fan "nickfan81@gmail.com"

RUN curl -C - -o /tmp/elasticsearch-analysis-ik.zip https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.6.1/elasticsearch-analysis-ik-7.6.1.zip && \
    unzip /tmp/elasticsearch-analysis-ik.zip -d /usr/share/elasticsearch/plugins && \
    rm -rf /tmp/elasticsearch-analysis-ik.zip
