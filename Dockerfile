# Install centos 7
FROM centos:centos7
MAINTAINER Lichia Lu <lichialu@gmail.com>
RUN yum -y update
RUN yum -y reinstall glibc-common
RUN yum install -y wget tar zip
RUN yum -y clean all

# Install Oracle JDK 8
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm && rpm -ivh jdk-8u45-linux-x64.rpm && rm -rf jdk-8u45-linux-x64.rpm
# Set the JAVA_HOME variable to make it clear where Java is located
ENV JAVA_HOME /usr/java/jdk1.8.0_45
