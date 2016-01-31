FROM oraclelinux:latest

MAINTAINER Felipe Quintella <docker-puppet@felipe.quintella.email>

# add splunk:splunk user
#RUN groupadd -r ${SPLUNK_GROUP} \
#    && useradd -r -m -g ${SPLUNK_GROUP} ${SPLUNK_USER}

# Instalando o repositório
RUN rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm ; \
     yum clean all

# Instalando o puppet
RUN yum -y install puppet-agent
