# docker-spring-boot
https://spring.io/guides/gs/spring-boot-docker/

## Run example
```
mvn package
java -jar target/spring-boot-docker-0.1.0.jar
```

## Containerize It
```
FROM java:8
RUN apt-get update
RUN apt-get install -y maven
WORKDIR /code
ADD pom.xml /code/pom.xml
ADD src /code/src
RUN ["mvn", "package"]
VOLUME /tmp
EXPOSE 8080
CMD ["java","-jar","target/spring-boot-docker-0.0.1.jar"]
```

## Build and Run image
```
docker build -t sprint-boot .
docker run -p 8080:8080 spring-boot
```