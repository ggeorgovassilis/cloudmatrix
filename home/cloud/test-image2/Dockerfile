FROM tomcat:8.0.26-jre8
MAINTAINER cloud

# Add the tar file of the web site 
ADD simplewebapp2.war /tmp/

# Docker automatically extracted. So move files to web directory
RUN mv /tmp/simplewebapp2.war /usr/local/tomcat/webapps

EXPOSE 8080

ENV CATALINA_OPTS -Djava.security.egd=file:/dev/urandom

ENTRYPOINT [ "/usr/local/tomcat/bin/catalina.sh" , "run"]
CMD [ "-D", "FOREGROUND"]

