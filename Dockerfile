FROM centos/systemd

MAINTAINER Felipe Quintella <docker-puppet@felipe.quintella.email>

LABEL version="1.1.3"
LABEL description="This is the base image used to build other images with puppet."

# Updating everthing
RUN yum -y update; yum -y install vim-minimal

# Installing the puppet repo
RUN rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm

# Installing puppet and cleanup
RUN yum -y install puppet-agent ; \
 yum clean all
