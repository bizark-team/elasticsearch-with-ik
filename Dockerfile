FROM docker.elastic.co/elasticsearch/elasticsearch:7.6.1
MAINTAINER Nick Fan "nickfan81@gmail.com"

#RUN curl -L -o /tmp/elasticsearch-analysis-ik.zip https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.6.1/elasticsearch-analysis-ik-7.6.1.zip && \
#    unzip /tmp/elasticsearch-analysis-ik.zip -d /usr/share/elasticsearch/plugins && \
#    rm -rf /tmp/elasticsearch-analysis-ik.zip
RUN echo 'permission java.security.AllPermission;' >> $JAVA_HOME/jre/lib/security/java.policy
RUN bin/elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.6.1/elasticsearch-analysis-ik-7.6.1.zip
