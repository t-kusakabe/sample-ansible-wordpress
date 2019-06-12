FROM amazonlinux:latest

WORKDIR /workdir

RUN curl https://bootstrap.pypa.io/get-pip.py | python && \
    pip install ansible && \
    yum update -y && \
    yum install -y sudo \
      iptables \
      coreutils \
      openssh-server \
      which && \
    echo "NETWORKING=yes" > /etc/sysconfig/network && \
    useradd ec2-user
