FROM jenkins:latest
USER root
COPY sources.list /etc/apt/
COPY pip.conf /.pip/pip.conf

ENV TZ=Asia/Harbin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
RUN groupadd docker && usermod -aG docker jenkins

USER jenkins

