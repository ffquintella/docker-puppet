FROM openshift/base-centos7:latest

MAINTAINER Felipe Quintella <docker-puppet@felipe.quintella.email>

LABEL version="1.3.1"
LABEL description="This is the base image used to build other images with puppet."

# Updating everthing
RUN yum -y update; yum -y install vim

RUN rm -rf /etc/yum.repos.d/puppetlabs.repo

# Installing the puppet repo
RUN rpm -Uvh https://yum.puppet.com/puppet5/puppet5-release-el-7.noarch.rpm

# Installing puppet and cleanup
RUN yum -y install puppet ; \
ln -s /opt/puppetlabs/bin/puppet /usr/local/bin/puppet ; \
yum clean all
