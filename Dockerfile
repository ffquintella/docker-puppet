FROM yamamon/centos7-minimal

MAINTAINER Felipe Quintella <docker-puppet@felipe.quintella.email>

# Instalando o repositório
RUN rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm ; \
     yum clean all

# Instalando o puppet
RUN yum -y install puppet-agent ; \
 yum clean all
