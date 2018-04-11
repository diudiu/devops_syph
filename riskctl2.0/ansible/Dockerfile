FROM williamyeh/ansible:ubuntu14.04
WORKDIR /tmp
COPY ./sources.list /etc/apt/
COPY ./pip.conf /.pip/pip.conf
COPY ./requirements.txt /tmp
COPY ./config /root/.ssh/config
RUN ssh-keygen -t rsa -f /root/.ssh/id_rsa
RUN apt-get update && apt-get install -y \
    python-pip     \
    python-dev   \
    build-essential  \    
  && rm -rf /var/lib/apt/lists/*
RUN  pip install -r requirements.txt

