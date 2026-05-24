# Use a lightweight JDK base image
FROM openjdk:24

# Set the working directory inside the container
WORKDIR /app

EXPOSE 8080
# Copy the built JAR into the container
COPY build/libs/*.jar app.jar

# Command to run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
