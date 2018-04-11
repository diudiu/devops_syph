FROM jenkins
USER root
RUN echo "Asia/Harbin" > /etc/timezone   \
  && dpkg-reconfigure -f noninteractive tzdata
COPY sources.list /etc/apt/
COPY pip.conf /.pip/pip.conf
USER jenkins
