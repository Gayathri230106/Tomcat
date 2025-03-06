FROM openjdk:17-jdk-slim
COPY target/my-app.war /opt/tomcat9/webapps/webapps/my-app.war
CMD ["java", "-jar", "/opt/tomcat9/webapps/webapps/my-app.war"]
