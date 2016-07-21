FROM jbaruch-docker.jfrog.io/jboss/wildfly:latest

ADD https://jbaruch.jfrog.io/jbaruch/libs-release-local/org/couchbase/sample/couchbase-javaee/[RELEASE]/couchbase-javaee-[RELEASE].war;test.level+=stupid /opt/jboss/wildfly/standalone/deployments/couchbase-javaee.war
