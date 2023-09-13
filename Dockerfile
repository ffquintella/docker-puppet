FROM rockylinux:9.1

MAINTAINER Felipe Quintella <docker-puppet@felipe.quintella.email>

LABEL version="r9p8.1"
LABEL description="This is the base image used to build other images with puppet."


# Installing the puppet repo
RUN dnf -y update; rm -rf /etc/yum.repos.d/puppetlabs.repo; \
dnf -y install https://yum.puppet.com/puppet8-release-el-9.noarch.rpm; \
dnf -y install puppet-agent ; \
ln -s /opt/puppetlabs/bin/puppet /usr/local/bin/puppet ; \
dnf clean all; \
rm -rf /var/cache/*
