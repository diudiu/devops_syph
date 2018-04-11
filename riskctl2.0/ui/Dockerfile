FROM registry.cn-qingdao.aliyuncs.com/syph-infra/nginx:1.10.3
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./rule_engine_ui.conf /etc/nginx/conf.d/default.conf
COPY ./startup.sh /
RUN  mkdir /opt/rule_engine_ui  \
  && curl -O -u admin:123456  \
     "http://192.168.1.100:8890/job/de-build/lastBuild/execution/node/3/ws/ui/webapp/dist/ui.tar"  \
  && tar xf ui.tar -C /opt/rule_engine_ui/  \
  && rm ui.tar
CMD ["/startup.sh"]
