FROM docker.elastic.co/elasticsearch/elasticsearch:5.2.2
ADD elasticsearch.yml /usr/share/elasticsearch/config/
USER root
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
RUN echo "Asia/Harbin" > /etc/timezone
ADD timezone/localtime /etc/localtime
USER elasticsearch
