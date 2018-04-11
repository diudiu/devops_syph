FROM ubuntu:14.04
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
COPY ./sources.list /etc/apt/
COPY ./pip.conf /.pip/pip.conf
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    vim \
    net-tools \
    python-pip \
    netcat \
    wget \
    curl \
  && rm -rf /var/lib/apt/lists/*
RUN echo "Asia/Harbin" > /etc/timezone   \
  && dpkg-reconfigure -f noninteractive tzdata
CMD ["/bin/bash"]
