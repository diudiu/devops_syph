FROM python:2.7
COPY ./sources.list /etc/apt/
COPY ./pip.conf /.pip/pip.conf
RUN apt-get update && apt-get install -y \
    vim      \
    netcat   \
    locales  \
  && rm -rf /var/lib/apt/lists/*
RUN locale-gen en_US.UTF-8 && dpkg-reconfigure locales
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
RUN echo "Asia/Harbin" > /etc/timezone  \
  && dpkg-reconfigure -f noninteractive tzdata

