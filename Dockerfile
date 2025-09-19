FROM maven:3-eclipse-temurin-24-alpine

WORKDIR /app

COPY ./entrypoint.sh /app/entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
