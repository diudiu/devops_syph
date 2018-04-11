FROM registry.cn-qingdao.aliyuncs.com/syph-infra/jdk:1.8.0
WORKDIR /code
COPY startup.sh /code
COPY application.properties /code
RUN  chmod 755 /code/startup.sh
RUN curl -O -u admin:123456 "http://192.168.1.100:8890/job/de-build/lastBuild/execution/node/3/ws/re/target/rule-engine-2.3.0-SNAPSHOT.jar"
CMD ["/code/startup.sh"]

#CMD ["java", "-ea", "-jar", "/code/rule-engine-2.3.0-SNAPSHOT.jar",  \
#     "-Dcom.sun.management.jmxremote.authenticate=false", \
#     "-Dcom.sun.management.jmxremote.ssl=false", \
#     "-Dcom.sun.management.jmxremote",  \
#     "-Dcom.sun.management.jmxremote.port=8082",   \
#     "--server.port=8081"]

