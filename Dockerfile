FROM centos:7

MAINTAINER Felipe Quintella <docker-puppet@felipe.quintella.email>

LABEL version="1.5.1"
LABEL description="This is the base image used to build other images with puppet."


# Installing the puppet repo
RUN yum -y update; rm -rf /etc/yum.repos.d/puppetlabs.repo; \
rpm -Uvh https://yum.puppet.com/puppet6/puppet6-release-el-7.noarch.rpm; \
yum -y install puppet ; \
ln -s /opt/puppetlabs/bin/puppet /usr/local/bin/puppet ; \
yum clean all; \
rm -rf /var/cache/*
