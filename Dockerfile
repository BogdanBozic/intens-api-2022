FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

ENV PORT=8080
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:resolve

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]

EXPOSE 8080
