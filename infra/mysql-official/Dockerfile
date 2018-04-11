FROM mysql:5.6
COPY ./sources.list /etc/apt/
COPY ./pip.conf /.pip/pip.conf
COPY my.cnf /etc/mysql/my.cnf
RUN apt-get update && apt-get install -y locales  \
  && rm -rf /var/lib/apt/lists/*
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
RUN echo "Asia/Harbin" > /etc/timezone   \
  && dpkg-reconfigure -f noninteractive tzdata
COPY concat.sh  /docker-entrypoint-initdb.d
#COPY initdb.sql /
COPY create.sql /
RUN chmod 755 /docker-entrypoint-initdb.d/concat.sh
