# FROM openjdk:17-jdk-slim
# COPY /home/ubuntu/workspace/Task4/target/my-tomcat-app.war /opt/tomcat9/webapps/my-app.war
# CMD ["java", "-jar", "/opt/tomcat9/webapps/my-app.war"]
# Use official Tomcat image
FROM tomcat:9.0-jdk17

# Set Tomcat to run on port 8082
ENV CATALINA_OPTS="-Dserver.port=8082"

# Copy WAR file into Tomcat's webapps directory
COPY my-tomcat-app.war /usr/local/tomcat/webapps/my-app.war

# Expose port 8082
EXPOSE 8082

# Start Tomcat server
CMD ["catalina.sh", "run"]
