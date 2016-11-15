FROM jbaruch-docker.jfrog.io/jboss/wildfly:latest

COPY dependencies *.war /opt/jboss/wildfly/standalone/deployments/couchbase-javaee.war
