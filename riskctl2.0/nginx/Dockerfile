FROM nginx:1.10.3
COPY ./sources.list /etc/apt/
COPY ./pip.conf /.pip/pip.conf
RUN  apt-get update && apt-get install -y curl  \
  && rm -rf /var/lib/apt/lists/*
RUN  echo "Asia/Harbin" > /etc/timezone  \
  && dpkg-reconfigure -f noninteractive tzdata
