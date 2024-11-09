
FROM openjdk:17-jdk-slim

WORKDIR /app


COPY . /app


RUN ./mvnw clean package


EXPOSE 3000


CMD ["java", "-jar", "target/yourapp.jar"]
