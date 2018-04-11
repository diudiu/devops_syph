FROM registry.cn-qingdao.aliyuncs.com/syph-de/nginx:1.10.3
COPY ./velenplat.conf  /etc/nginx/conf.d/
COPY ./velen_ui.conf   /etc/nginx/conf.d/
COPY ./startup.sh /
RUN  mkdir /opt/velen_ui  \
  && curl -O -u admin:123456  \
     "http://jenkins:8890/job/velenai-build/lastBuild/execution/node/3/ws/ui/dist/ui.tar"  \
  && tar xf ui.tar -C /opt/velen_ui/  \
  && rm ui.tar
CMD ["/startup.sh"]
