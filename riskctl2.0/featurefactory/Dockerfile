FROM registry.cn-qingdao.aliyuncs.com/syph-de/python4fefa:2.7
ENV PYTHONUNBUFFERED 1
RUN  mkdir featurefactory     \
  && curl -O -u admin:123456  \ 
     "http://192.168.1.100:8890/job/de-build/lastBuild/execution/node/3/ws/ff/ff.tar"  \
  && tar xf ff.tar -C featurefactory \
  && rm ff.tar
COPY startup.sh  /
COPY uwsgi.ini /
WORKDIR /code
CMD ["/startup.sh"]

