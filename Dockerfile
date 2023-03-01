FROM tomcat:9.0

COPY docker/tomcat/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

RUN ["mv", "webapps.dist/docs", "webapps/docs"]
RUN ["mv", "webapps.dist/examples", "webapps/examples"]
RUN ["mv", "webapps.dist/host-manager", "webapps/host-manager"]
RUN ["mv", "webapps.dist/manager", "webapps/manager"]
RUN ["mv", "webapps.dist/ROOT", "webapps/ROOT"]

COPY docker/tomcat/context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY docker/tomcat/context.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml

COPY target/spring-mvc-klen-app.war /usr/local/tomcat/webapps/spring-mvc-klen-app.war

EXPOSE 8080

ENTRYPOINT ["catalina.sh", "run"]