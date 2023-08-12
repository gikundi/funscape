# Build stage
FROM openjdk:11 AS build
WORKDIR /app
COPY . /app
RUN ./gradlew build

# Final image
FROM openjdk:11
WORKDIR /usr/app
COPY --from=build /app/build/libs/java-app-1.0-SNAPSHOT.jar /usr/app/
CMD ["java", "-jar", "java-app-1.0-SNAPSHOT.jar"]


