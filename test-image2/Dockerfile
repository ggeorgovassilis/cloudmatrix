FROM cloud/tomcat:v2
MAINTAINER cloud

# Add the tar file of the web site 
ADD simplewebapp2.war /tmp/

# Docker automatically extracted. So move files to web directory
RUN mv /tmp/simplewebapp2.war /opt/tomcat/webapps

EXPOSE 8080

ENTRYPOINT [ "/opt/tomcat/bin/catalina.sh" , "run"]
CMD [ "-D", "FOREGROUND" "-Djava.security.egd=file:/dev/urandom"]

