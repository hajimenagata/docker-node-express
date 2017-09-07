FROM centos:centos7

MAINTAINER Hajime Nagata <hajime@tettori.net>

RUN yum -y update
RUN yum -y install epel-release

RUN yum -y install nano
#RUN yum -y install wget
RUN yum -y install nginx
#RUN yum -y install service
RUN yum -y install sudo
#RUN yum -y install systemd
RUN yum -y install git


# Clean up YUM when done.
RUN yum clean all

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
RUN source ~/.bashrc

RUN mkdir -p /src
VOLUME /src

EXPOSE 80 22
EXPOSE 3000

ADD scripts /scripts
RUN chmod +x /scripts/start.sh

# Kicking in
CMD ["/scripts/start.sh"]
