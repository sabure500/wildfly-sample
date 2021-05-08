FROM jboss/wildfly:23.0.1.Final

RUN sh /opt/jboss/wildfly/bin/add-user.sh -u jmxuser -p jmxpass --silent

CMD ["/opt/jboss/wildfly/bin/standalone.sh" , "-b" , "0.0.0.0" , "-bmanagement" , "0.0.0.0"]