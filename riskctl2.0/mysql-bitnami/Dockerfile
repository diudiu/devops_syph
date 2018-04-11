FROM bitnami/mysql:5.7.16-r4
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8 
COPY initdb.sql /
COPY createdb.sh /docker-entrypoint-initdb.d

