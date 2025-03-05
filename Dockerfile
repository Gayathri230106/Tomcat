FROM openjdk:17-jdk-slim
COPY target/my-tomcat-app.war /usr/local/tomcat/webapps/myapp.war
CMD ["java", "-jar", "/usr/local/tomcat/webapps/myapp.war"]
