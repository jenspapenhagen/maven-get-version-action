FROM maven:3.9.11-eclipse-temurin-21-alpine

COPY ./entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]