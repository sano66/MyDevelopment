#FROM jenkinsci/jenkins:1.626
FROM jenkins:1.651.3-alpine
USER root
RUN mkdir /usr/local/JLibs && chmod 777 /usr/local/JLibs 
USER jenkins
RUN curl -sS http://ftp.yz.yamagata-u.ac.jp/pub/network/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz | tar zxf - -C /usr/local/JLibs
RUN curl -sS http://ftp.kddilabs.jp/infosystems/apache//ant/binaries/apache-ant-1.9.7-bin.tar.gz | tar zxf - -C /usr/local/JLibs
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
COPY hudson.tasks.Ant.xml /var/jenkins_home/hudson.tasks.Ant.xml
COPY hudson.tasks.Maven.xml /var/jenkins_home/hudson.tasks.Maven.xml
