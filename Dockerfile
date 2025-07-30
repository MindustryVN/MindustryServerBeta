# FROM eclipse-temurin:24-jre-alpine
FROM eclipse-temurin:24-jdk

COPY . /app


ENTRYPOINT ["java","-XX:ErrorFile=/config/hs_err_pid%p.log","-XX:+HeapDumpOnOutOfMemoryError", "-XX:HeapDumpPath=/config/heap.hprof","-XX:NativeMemoryTracking=detail" ,"-Xmx512m","-jar", "/app/server-release.jar"]
# ENTRYPOINT ["java", "-jar", "/app/server-release.jar"]
