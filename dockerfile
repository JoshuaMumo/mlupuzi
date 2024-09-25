# Use a base image with Java 23 (or the version you're using)
FROM eclipse-temurin:23-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file into the container at /app
COPY target/my-app-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port your Spring Boot application will run on (default is 8080)
EXPOSE 8080

# Define the command to run your app in the container
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
