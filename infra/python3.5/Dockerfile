FROM python:3.5
COPY ./sources.list /etc/apt/
COPY ./pip.conf /.pip/pip.conf
RUN apt-get update && apt-get install -y \
    vim      \
    netcat   \
    locales  \
  && rm -rf /var/lib/apt/lists/*

RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN echo "Asia/Harbin" > /etc/timezone  \
  && dpkg-reconfigure -f noninteractive tzdata

