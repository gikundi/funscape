FROM adoptopenjdk:11-jre-hotspot

RUN mkdir /usr/app

COPY ./build/libs/java-app-1.0-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "java-app-1.0-SNAPSHOT.jar"]

