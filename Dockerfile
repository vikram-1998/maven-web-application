FROM tomcat:9.0-jdk17-temurin
COPY target/maven-web-app*.war /usr/local/tomcat/webapps/maven-web-application.war
