FROM openjdk:17-jdk-slim
COPY /home/ubuntu/workspace/Task4/target/my-tomcat-app.war /opt/tomcat9/webapps/my-app.war
CMD ["java", "-jar", "/opt/tomcat9/webapps/my-app.war"]
