FROM gradle:8.7.0-jdk17
WORKDIR /app
COPY . /app
RUN chmod +x ./gradlew
RUN ./gradlew build --no-daemon
RUN ./gradlew bootJar
ENTRYPOINT ["java","-jar", "./build/libs/cloud-app-mihai-margarita-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080