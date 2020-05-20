FROM openjdk:8

WORKDIR teht1-13
RUN git clone https://github.com/docker-hy/spring-example-project
WORKDIR spring-example-project
RUN ./mvnw package
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
