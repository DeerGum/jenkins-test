FROM openjdk:11-ea-28-jre-slim

ENV APP_HOME=/usr/app/

WORKDIR $APP_HOME

COPY build/libs/*.jar application.jar

EXPOSE 8000

CMD ["java", "-jar", "application.jar"]