FROM eclipse-temurin:21-jre-alpine
ADD target/config-server*.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]