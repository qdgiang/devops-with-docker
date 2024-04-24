FROM amazoncorretto:8 as builder
WORKDIR /usr/src/app
COPY . .
RUN ./mvnw package

FROM amazoncorretto:8-alpine
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app/target/docker-example-1.1.3.jar .
RUN adduser -D appuser
USER appuser
CMD ["java", "-jar", "docker-example-1.1.3.jar"]
EXPOSE 8080
