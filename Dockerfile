# FROM eclipse-temurin:17-jre-alpine
FROM eclipse-temurin:8-jre

COPY . /app

ENTRYPOINT ["java", "-jar", "/app/server-release.jar"]
