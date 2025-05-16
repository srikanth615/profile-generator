FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY --from=builder /app/target/profile-generator-1.3.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
