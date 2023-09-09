FROM rockylinux:9.2

LABEL MAINTAINER Felipe Quintella <docker-puppet@felipe.quintella.email>

LABEL version="9.8.1"
LABEL description="This is the base image used to build other images with puppet."


# Installing the puppet repo
RUN dnf -y update; rm -rf /etc/yum.repos.d/puppetlabs.repo; \
dnf -y install https://yum.puppet.com/puppet7-release-el-9.noarch.rpm; \
dnf -y install puppet ; \
ln -s /opt/puppetlabs/bin/puppet /usr/local/bin/puppet ; \
dnf clean all; \
rm -rf /var/cache/*
