#! /bin/sh
set -e
exec java $JAVA_OPTS -jar /jenkins/jenkins.war $JENKINS_OPTS "$@"
