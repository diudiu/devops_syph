FROM registry.cn-qingdao.aliyuncs.com/syph-infra/ubuntu:14.04
WORKDIR /root
RUN wget https://coding.net/api/share/download/4438ad4d-8116-4fba-8f96-0722d06d63cd \
    -O jdk-8u111-linux-x64.tar.gz
RUN mkdir /usr/local/java  \
 && tar -zxf /root/jdk-8u111-linux-x64.tar.gz -C /usr/local/java \
 && rm -rf /root/jdk-8u111-linux-x64.tar.gz
ENV JAVA_HOME=/usr/local/java/jdk1.8.0_11
ENV JRE_HOME=/usr/local/java/jdk1.8.0_11/jre
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib:$CLASSPATH
ENV PATH=$JAVA_HOME/bin:$PATH
CMD ["/bin/bash"]

