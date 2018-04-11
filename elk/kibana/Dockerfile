FROM docker.elastic.co/kibana/kibana:5.2.2
ADD kibana.yml /usr/share/kibana/config/
USER root
RUN echo "Asia/Harbin" > /etc/timezone
ADD timezone/localtime /etc/localtime
RUN chown kibana:kibana config/kibana.yml
USER kibana
