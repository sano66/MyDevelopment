#!/bin/sh
set -e
chown jenkins.jenkins /var/jenkins_home/hudson.tasks.Ant.xml
chown jenkins.jenkins /var/jenkins_home/hudson.tasks.Maven.xml
