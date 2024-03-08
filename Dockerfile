# Use an official OpenJDK runtime as a parent image
FROM adoptopenjdk/openjdk17:alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY target/discoveryServer-0.0.1-SNAPSHOT.jar  /app/discoveryServer.jar

# Specify the command to run your application
CMD ["java", "-jar", "discoveryServer-0.0.1-SNAPSHOT.jar"]
