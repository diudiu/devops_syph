FROM docker.elastic.co/logstash/logstash:5.2.2
USER root
RUN echo "Asia/Harbin" > /etc/timezone
ADD timezone/localtime /etc/localtime
USER logstash
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
ADD pipeline/ /usr/share/logstash/pipeline/
ADD config/ /usr/share/logstash/config/
