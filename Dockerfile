FROM rockylinux:8.7-minimal

MAINTAINER Felipe Quintella <docker-puppet@felipe.quintella.email>

LABEL version="8.8.3"
LABEL description="This is the base image used to build other images with puppet."


# Installing the puppet repo
RUN yum -y update; rm -rf /etc/yum.repos.d/puppetlabs.repo; \
rpm -Uvh https://yum.puppet.com/puppet7/puppet-release-el-8.noarch.rpm; \
yum -y install puppet ; \
ln -s /opt/puppetlabs/bin/puppet /usr/local/bin/puppet ; \
yum clean all; \
rm -rf /var/cache/*
