FROM mysql:5.6
COPY ./sources.list /etc/apt/
COPY ./pip.conf /.pip/pip.conf
RUN apt-get update && apt-get install -y locales  \
  && rm -rf /var/lib/apt/lists/*
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
RUN echo "Asia/Harbin" > /etc/timezone  \
  && dpkg-reconfigure -f noninteractive tzdata
ENV REPLICATION_USER replication
ENV REPLICATION_PASSWORD replication_pass
ENV MASTER_PORT 3306
COPY replication-entrypoint.sh /usr/local/bin/
COPY init-slave.sh /
COPY initdb.sql /
COPY createdb.sh /docker-entrypoint-initdb.d
ENTRYPOINT ["replication-entrypoint.sh"]
CMD ["mysqld"]
