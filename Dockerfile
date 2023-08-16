# centos
FROM centos:7.9.2009

COPY . /app

# work dir
WORKDIR /app


# rust
RUN cd /app && \
	sh rustup-init.sh -y

# if you want to install latest git
# yum -y install https://packages.endpointdev.com/rhel/7/os/x86_64/endpoint-repo.x86_64.rpm

# require
RUN yum -y install git && \
	yum -y install gcc && \
	yum -y install openssl && \
	yum -y install openssl-devel

# env
ENV PATH="/root/.cargo/bin:${PATH}"

# bash
CMD ["bash"]