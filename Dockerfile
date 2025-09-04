# FROM eclipse-temurin:17-jre-alpine
FROM eclipse-temurin:17-jdk

COPY . /app

ENTRYPOINT ["java", "-jar", "/app/server-release.jar"]
