FROM tomcat:8.5.90-jdk8
COPY target/maven-web-app*.war /usr/local/tomcat/webapps/maven-web-application.war
