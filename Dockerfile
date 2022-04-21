FROM openjdk:8-alpine


#Required for startingapplication up.
RUN apk update && apk add /bin/sh


RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/Calculator-1.0-SNAPSHOT.jar $PROJECT_HOME/Calculator-1.0-SNAPSHOT.jar


WORKDIR $PROJECT_HOME

CMD ["java",".jar","./Calculator-1.0-SNAPSHOT.jar"]
