# Use a base image with Java and a suitable version of the Java JRE
FROM openjdk:8-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot application JAR file from the local filesystem to the container

COPY target/petadoption-0.0.1-SNAPSHOT.jar /app/petadoption-0.0.1-SNAPSHOT.jar

# Expose the port on which your Spring Boot application is running (if needed)
EXPOSE 9090

# Specify the command to run your Spring Boot application when the container starts
CMD ["java", "-jar", "petadoption-0.0.1-SNAPSHOT.jar"]
