# syntax=docker/dockerfile:1

FROM openjdk:21
WORKDIR /app
FROM maven:3.9.5
RUN mvn clean build
COPY ./target/demo-0.0.1-SNAPSHOT.jar /app 
EXPOSE 8080
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]

