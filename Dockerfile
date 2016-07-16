FROM jboss/wildfly

COPY WAR-FROM-ARTIFACTORY /opt/jboss/wildfly/standalone/deployments/couchbase-javaee.war

