FROM jbaruch-docker.jfrog.io/jboss/wildfly:latest

RUN curl https://api.bintray.com/content/jfrog/jfrog-cli-go/\$latest/jfrog-cli-linux-amd64/jfrog?bt_package=jfrog-cli-linux-amd64 > jfrog
RUN chmod +x jfrog
RUN ./jfrog rt config --url https://jbaruch.jfrog.io/jbaruch --user $ARTIFACTORY_USER --apikey $ARTIFACTORY_API_KEY
RUN ./jfrog rt dl --spec ./docker-dependencies.spec

COPY dependencies *.war /opt/jboss/wildfly/standalone/deployments/couchbase-javaee.war
