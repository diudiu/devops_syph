FROM registry.cn-qingdao.aliyuncs.com/syph-infra/nginx:1.10.3
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./featurefactory.conf  /etc/nginx/conf.d/
COPY ./rule_engine.conf /etc/nginx/conf.d/
COPY ./rule_engine_ui.conf /etc/nginx/conf.d/default.conf
