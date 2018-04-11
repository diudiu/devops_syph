FROM registry.cn-qingdao.aliyuncs.com/syph-velen/python4velen:3.5
ENV PYTHONUNBUFFERED 1
RUN mkdir velenplat  \ 
  && curl -O -u admin:123456  \ 
     "http://jenkins:8890/job/velenai-build/lastBuild/execution/node/3/ws/vp/velenplat.tar"  \
  && tar xf velenplat.tar -C velenplat \
  && rm velenplat.tar
COPY startup.sh  /
COPY uwsgi.ini /
CMD ["/startup.sh"]

