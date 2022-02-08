# Start with a base image containing Java runtime
FROM openjdk:17 as build

# Add Author info
LABEL maintainer="hyulee"

# Add a volume to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 3100

# The application's jar file
ARG JAR_FILE=build/libs/demo-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} app.jar

# Run the jar file
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/to-do-springboot.jar"]
ENTRYPOINT ["java","-jar","/app.jar"]