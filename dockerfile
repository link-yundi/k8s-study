FROM adoptopenjdk:11-jdk-hotspot
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
COPY entrypoint.sh entrypoint.sh
RUN mkdir logs && touch logs/log.txt

EXPOSE 8080

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]