# centos
FROM centos:7.9.2009

COPY . /root

# rust
RUN cd /root && \
    sh rustup-init.sh -y

# require
RUN yum -y install https://packages.endpointdev.com/rhel/7/os/x86_64/endpoint-repo.x86_64.rpm && \
    yum -y install git && \
    yum -y install gcc && \
    yum -y install openssl && \
    yum -y install openssl-devel

# relose  detected dubious ownership in repository issue, see: https://github.com/actions/checkout/issues/1049
RUN git config --system --add safe.directory '*'

# env
ENV PATH="/root/.cargo/bin:${PATH}"

# bash
CMD ["bash"]
