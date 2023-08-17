# docker-centos-rust
This is a CentOS Docker image with the Rust environment. You can utilize it in a GitHub Action as a container.

docker

`docker pull joleensteve/centrust:latest`

Base: Centos7.9.2009 + Openssl1.0.2k + Rustc1.71.1 + Git2.41

I use this to address the OpenSSL low version issue because the minimum version supported by the GitHub runner's Ubuntu OS is 1.1+.
