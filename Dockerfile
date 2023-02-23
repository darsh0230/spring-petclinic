FROM openjdk:17-jdk-slim

VOLUME /tmp

EXPOSE 8081

ARG JAR_FILE="target/spring-petclinic-3.0.0-SNAPSHOT.jar"

ADD ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]
